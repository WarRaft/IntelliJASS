import org.jetbrains.intellij.platform.gradle.IntelliJPlatformType

// https://plugins.jetbrains.com/docs/intellij/api-changes-list-2024.html


plugins {
    //id("java")

    //https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin.html#usage
    id("org.jetbrains.intellij.platform") version "2.0.0"

    kotlin("jvm")
}

group = "org.intellij.sdk"

repositories {
    mavenCentral()

    intellijPlatform {
        defaultRepositories()
    }
}

sourceSets {
    main {
        java {
            srcDirs("src/main/gen")
        }
    }
}

dependencies {
    testImplementation("junit:junit:4.13.2")
    implementation(kotlin("stdlib-jdk8"))
    intellijPlatform {
        // https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin-dependencies-extension.html
        intellijIdeaCommunity("2024.2")

        instrumentationTools()

        // https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin-extension.html#intellijPlatform-pluginVerification
        pluginVerifier()

    }
}

// https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin-extension.html#intellijPlatform-pluginVerification-ides
intellijPlatform {
    pluginVerification {
        ides {
            ide(IntelliJPlatformType.IntellijIdeaCommunity, "2024.2")
            recommended()
        }
    }
}


tasks {
    buildSearchableOptions {
        enabled = false
    }

    // https://plugins.jetbrains.com/docs/intellij/build-number-ranges.html?from=jetbrains.org
    patchPluginXml {
        //version.set("${project.version}")
    }
}
kotlin {
    jvmToolchain(17)
}
