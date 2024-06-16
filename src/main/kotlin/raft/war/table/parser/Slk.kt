package raft.war.table.parser

class Slk(text: String) {
    var width: Int = 0
    var height: Int = 0
    val list: MutableList<MutableList<Any>> = mutableListOf()

    private fun cell(x: Int, y: Int, value: Any?) {
        while (list.size <= y) list.add(mutableListOf())
        while (list[y].size <= x) list[y].add("")
        list[y][x] = value ?: ""
    }

    init {
        var y = -1
        for (line in text.lines()) {
            if (!line.startsWith("C;")) continue

            var value = ""
            var x = -1
            var i = 2
            while (i < line.length) {
                when {
                    line[i] == 'Y' -> {
                        i++
                        val start = i
                        while (i < line.length && line[i].isDigit()) i++
                        y = line.substring(start, i).toInt()
                    }

                    line[i] == 'X' -> {
                        i++
                        val start = i
                        while (i < line.length && line[i].isDigit()) i++
                        x = line.substring(start, i).toInt()
                    }

                    line[i] == 'K' -> {
                        i++
                        if (line[i] == '"') {
                            i++
                            val start = i
                            while (i < line.length && (line[i] != '"' || line[i - 1] == '\\')) i++
                            value = line.substring(start, i).replace("\\n", "\n").replace("\\\"", "\"")
                            i++
                        } else {
                            val start = i
                            while (i < line.length && line[i] != ';') i++
                            value = line.substring(start, i).replace("\\n", "\n")
                        }
                    }

                    else -> {
                        i++
                    }
                }
                if (i < line.length && line[i] == ';') i++
            }
            if (x >= 0 && y >= 0) cell(x - 1, y - 1, value)
        }
    }
}
