Maven JDK9 Jigsaw Example
=========================

Overview
--------

This contains a multi module build which comprises of two `jmod` modules and
a simple `jar` module.

Those modules will be linked together into a single runtime image in the
mod-jlink area.

You can start the different test programs from the different 
modules by using the following calls:

    cd mod-jlink/target/maven-jlink/
    bin/java com.soebes.example.nine.two.Main

    cd mod-jlink/target/maven-jlink/
    bin/java com.soebes.example.nine.one.Main

    cd mod-jlink/target/maven-jlink/
    bin/java com.soebes.example.nine.jar.Main


Structure:

    + pom.xml
    !
    +-- mod-1
    +-- mod-2
    +-- mod-jar
    +-- mod-jlink


Currently the [maven-jmod-plugin][jmod-plugin] and the
[maven-jlink-plugin][jlink-plugin] introduce a new packaging type `jmod` or
`jlink`. The `mod-1` and `mod-2` are using a new packaging type `jmod` whereas
`mod-jar` is a usual `jar` packaging.

The modules which will be linked into the final image is decided by the given
dependencies in the `mod-jlink` module.

I'm not sure if this is the right path to go.


Prerequisites
-------------

To run this example with Maven you need to have a configured
`toolchains.xml` correctly configured in your `$HOME/.m2/` location.
This toolschains.xml looks like this:

``` 
<toolchains>
  <toolchain>
    <type>jdk</type>
    <provides>
      <version>1.9</version>
      <vendor>oracle</vendor>
    </provides>
    <configuration>
      <jdkHome>/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+181.jdk/Contents/Home</jdkHome>
    </configuration>
  </toolchain>
</toolchains>
```

The given path is related to Mac OS. In cases where you use this on Windows or
Linux you need to change that accordingly to your installation paths for the 
JDK 9.

You have to configure to use the [SNAPSHOT repositories of the Apache Software
Foundation](https://repository.apache.org/content/repositories/snapshots/) to
get the [maven-jlink-plugin][jlink-plugin] and the
[maven-jmod-plugin][jmod-plugin] in their appropriate version, cause at the
moment not more than SNAPSHOT's exists. This should be done either in your user
`settings.xml` or in the configuration of your repository manager.


Status
------
 * Only working for the given JDK in the toolchains configuration.

 * The maven-jlink-plugin has been officially released in a 3.0.0-alpha-1 
   release. So it's available from Maven Central.
 * The maven-jmod-plugin is currently under VOTE for first public release.
   Should take only a few days.

[jlink-plugin]: https://maven.apache.org/plugins-archives/maven-jlink-plugin-LATEST/
[jmod-plugin]: https://maven.apache.org/plugins-archives/maven-jmod-plugin-LATEST/
