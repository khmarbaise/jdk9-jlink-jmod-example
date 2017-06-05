Maven JDK9 Jigsaw Example
=========================

Overview
--------

This contains a multi module build which comprises of two jmod modules.

Those jmods modules will be linked together into a single runtime image in the
mod-jlink area.

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
      <jdkHome>/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+170.jdk/Contents/Home</jdkHome>
    </configuration>
  </toolchain>
</toolchains>
```

The given path is related to Mac OS. In cases where you use this on Windows or
Linux you need to change that accordingly to your installation paths for the 
JDK 9.

You have to configure to use the [SNAPSHOT repositories of the Apache Software
Foundation](https://repository.apache.org/content/repositories/snapshots/) to
get the maven-jlink-plugin and the maven-jmod-plugin in their appropriate
version, cause at the moment not more than SNAPSHOT's exists. This should
be done either in your user `settings.xml` or in the configuration of your 
repository manager.


Status
------

 * Currently not more than a Proof of Concept 
 * Everything here is speculative!
