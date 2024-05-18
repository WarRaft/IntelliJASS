// https://kotlinlang.org/docs/releases.html#release-details

pluginManagement {
    plugins {
        kotlin("jvm") version "1.9.24"
    }
}
plugins {
    id("org.gradle.toolchains.foojay-resolver-convention") version "0.5.0"
}
rootProject.name = "intellijass"
