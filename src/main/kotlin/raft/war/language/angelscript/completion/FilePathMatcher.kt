package raft.war.language.angelscript.completion

import java.io.File
import java.io.IOException
import java.nio.file.InvalidPathException
import java.nio.file.Path
import java.nio.file.Paths
import java.util.stream.Stream
import kotlin.math.max

internal object FilePathMatcher {
    fun match(str: String): Stream<Path> {
        val matches: MutableList<Path> = ArrayList()

        val file = File(str)
        if (str.endsWith(File.separator) || str.endsWith("/")) {
            val filesInDir = file.listFiles()
            if (filesInDir != null) {
                for (f in filesInDir) {
                    matches.add(Paths.get(f.absolutePath))
                }
            }
        } else {
            if (file.parent != null) {
                val basename = getBaseName(str)
                val matchesInParent = File(File(str).parent)
                    .listFiles { _: File?, name: String -> name.startsWith(basename) && name != basename }

                if (matchesInParent != null) {
                    for (f in matchesInParent) {
                        matches.add(Paths.get(f.absolutePath))
                    }
                }
            }
        }

        return matches.stream().sorted()
    }


    @JvmStatic
    fun aggregateFilePaths(dirContainingFile: String?, queryString: String): Stream<String> {
        val queryFile = File(queryString)
        val queryStringLastSlash = getLastIndexOfSeparator(queryString)

        if (queryFile.isAbsolute) {
            return match(queryString).map { obj: Path -> obj.toString() }
                .map { s: String -> preserveOriginalPrefix(queryString, s, queryStringLastSlash) }
        } else if (queryString.startsWith("~")) {
            var canonicalPath = File(System.getProperty("user.home") + queryString.substring(1)).path
            if (queryString.endsWith(File.separator) || queryString.endsWith("/")) {
                canonicalPath += File.separatorChar
            }

            return match(canonicalPath)
                .map { obj: Path -> obj.toString() }
                .map { s: String -> preserveOriginalPrefix(queryString, s, queryStringLastSlash) }
        }

        val relativeDirFile = File(dirContainingFile, queryString)
        try {
            var canonicalPath = relativeDirFile.canonicalPath
            if (queryString.endsWith(File.separator) || queryString.endsWith("/")) {
                canonicalPath += File.separatorChar
            }
            return match(canonicalPath).map { obj: Path -> obj.toString() }
                .map { s: String -> preserveOriginalPrefix(queryString, s, queryStringLastSlash) }
        } catch (e: IOException) {
            return Stream.empty()
        }
    }

    private fun getLastIndexOfSeparator(path: String): Int {
        val separatorIndex = path.lastIndexOf(File.separatorChar)
        val forwardSlashIndex = path.lastIndexOf("/")

        return max(separatorIndex.toDouble(), forwardSlashIndex.toDouble()).toInt()
    }

    private fun preserveOriginalPrefix(
        originalQueryString: String,
        resolvedPath: String,
        queryStringLastSlash: Int
    ): String {
        return originalQueryString.substring(0, queryStringLastSlash + 1) + getBaseName(resolvedPath)
    }

    private fun getBaseName(path: String): String {
        try {
            val pathObj = Paths.get(path)
            return if (pathObj.fileName == null) "" else pathObj.fileName.toString()
        } catch (e: InvalidPathException) {
            return ""
        }
    }
}
