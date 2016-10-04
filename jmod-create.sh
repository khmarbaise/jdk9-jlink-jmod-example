#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+138.jdk/Contents/Home
JMOD=${JAVA_HOME}/bin/jmod
JMODS=${JAVA_HOME}/jmods

mkdir -p target/jmods
$JMOD create \
  --module-path $JMODS:target/classes \
  --os-arch x86_64 \
  --os-name Darwin \
  --os-version 11.2 \
  --class-path target/classes \
  --module-version 1.0-SNAPHSHOT \
  target/jmods/org.apache.jmod
