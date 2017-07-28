#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+180.jdk/Contents/Home
JLINK=${JAVA_HOME}/bin/jlink
JMODS=${JAVA_HOME}/jmods

${JLINK} --module-path $JMODS:target/jmods --no-header-files --no-man-pages -G --compress=1 --add-modules=org.apache --output=target/jre 
#${JLINK} -G --output jre --module-path $JMODS --add-modules java.base 

