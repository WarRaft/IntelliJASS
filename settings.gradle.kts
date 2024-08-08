// https://kotlinlang.org/docs/releases.html#release-details

pluginManagement {
    plugins {
        kotlin("jvm") version "2.0.0"
    }
    repositories {
        maven("https://oss.sonatype.org/content/repositories/snapshots/")
        gradlePluginPortal()
    }
}
plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.5.0"
}
rootProject.name = "intellijass"
