Maven JDK9 Jigsaw Example
=========================

This contains a multi module build which contains
two jmod modules.

Those jmods will be linked together into a single 
runtime image in the mod-jlink area.

You can start the created image by:

    cd mod-jlink/target/jlink/
    bin/java com.soebes.example.nine.two.Main

    cd mod-jlink/target/jlink/
    bin/java com.soebes.example.nine.one.Main

Structure:

    + pom.xml
    !
    +-- mod-1
    +-- mod-2
    +-- mod-jlink


Currently the maven-jmod-plugin and the maven-jlink-plugin
introduce a new packaging type `jmod` or `jlink`. I'm not sure
if this is the right path to go.
