import org.jetbrains.intellij.platform.gradle.IntelliJPlatformType
import org.jetbrains.kotlin.gradle.dsl.JvmTarget
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

// https://plugins.jetbrains.com/docs/intellij/api-changes-list-2024.html

plugins {
    //id("java")

    //https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin.html#usage
    id("org.jetbrains.intellij.platform") version "2.2.0"

    // https://kotlinlang.org/docs/gradle-configure-project.html
    kotlin("jvm") version "2.1.0"
}

group = "org.intellij.sdk"

java {
    sourceCompatibility = JavaVersion.VERSION_21
    targetCompatibility = JavaVersion.VERSION_21
}

// https://docs.gradle.org/current/userguide/toolchains.html
tasks.withType<KotlinCompile>().configureEach {
    compilerOptions {
        jvmTarget.set(JvmTarget.JVM_21)
    }
}

tasks.withType<JavaCompile>().configureEach {
    javaCompiler = javaToolchains.compilerFor {
        languageVersion = JavaLanguageVersion.of(21)
    }
}

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
        intellijIdeaCommunity("2024.3")

        //instrumentationTools() // deprecated

        // https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin-extension.html#intellijPlatform-pluginVerification
        pluginVerifier()

    }
}

// https://plugins.jetbrains.com/docs/intellij/tools-intellij-platform-gradle-plugin-extension.html#intellijPlatform-pluginVerification-ides
intellijPlatform {
    pluginVerification {
        ides {
            ide(IntelliJPlatformType.IntellijIdeaCommunity, "2024.3")
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
        //version = "${project.version}"
        //sinceBuild.set("232")

    }
}
kotlin {
    jvmToolchain(21)
}
