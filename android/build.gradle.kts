// Root build.gradle.kts

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

// Define a new build directory outside the project
val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()

// Set the new build directory for the root project
rootProject.layout.buildDirectory.set(newBuildDir)

// Configure all subprojects
subprojects {
    // Each subproject will have its own build folder inside the new root build folder
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.set(newSubprojectBuildDir)

    // Ensure subprojects evaluate after the :app module
    project.evaluationDependsOn(":app")
}

// Register a clean task to delete the new build directory
tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
