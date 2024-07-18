// https://plugins.jetbrains.com/docs/intellij/api-changes-list-2024.html


// https://plugins.jetbrains.com/docs/intellij/tools-gradle-intellij-plugin.html
plugins {
    //id("java")
    id("org.jetbrains.intellij") version "1.17.4"
    kotlin("jvm")
}

group = "org.intellij.sdk"

repositories {
    mavenCentral()
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
}

java {
}

// See https://plugins.jetbrains.com/docs/intellij/tools-gradle-intellij-plugin.html
intellij {
    version.set("2024.1.4")
    //type.set("IU")
    //plugins.set(listOf("com.tang:1.4.11-IDEA231"))
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
