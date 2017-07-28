#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+180.jdk/Contents/Home
JAVAC=${JAVA_HOME}/bin/javac
JMODS=${JAVA_HOME}/jmods

mkdir -p target/classes
$JAVAC --release 9 -d target/classes src/main/java/module-info.java src/main/java/org/apache/j9/Main.java

