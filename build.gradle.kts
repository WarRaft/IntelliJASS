plugins {
    id("java")
    id("org.jetbrains.intellij") version "1.16.1"
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
    compileOnly("org.projectlombok:lombok:1.18.30")
    annotationProcessor("org.projectlombok:lombok:1.18.30")

    testCompileOnly("org.projectlombok:lombok:1.18.30")
    testCompileOnly("org.projectlombok:lombok:1.18.30")
}

java {
    sourceCompatibility = JavaVersion.VERSION_17
}

// See https://plugins.jetbrains.com/docs/intellij/tools-gradle-intellij-plugin.html
intellij {
    version.set("2023.3")
    //type.set("IU")
    //plugins.set(listOf("com.tang:1.4.11-IDEA231"))
}

tasks {
    buildSearchableOptions {
        enabled = false
    }

    // https://plugins.jetbrains.com/docs/intellij/build-number-ranges.html?from=jetbrains.org
    patchPluginXml {
        version.set("${project.version}")
    }
}
