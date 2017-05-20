#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+170.jdk/Contents/Home
JAVA=${JAVA_HOME}/bin/java
JMODS=${JAVA_HOME}/jmods

$JAVA --module-path target/classes -m org.apache/org.apache.j9.Main
