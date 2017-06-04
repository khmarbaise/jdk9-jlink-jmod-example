#!/bin/bash
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.9.0_ea+172.jdk/Contents/Home
JAVAPACKAGER=${JAVA_HOME}/bin/javapackager
JMODS=${JAVA_HOME}/jmods

#$JAVAPACKAGER -deploy -native image 
#$JAVAPACKAGER -deploy -native installer 
$JAVAPACKAGER -deploy -native msi 
$JAVAPACKAGER -deploy -native dmg \
  -name FirstApplication \
  -outdir result-folder \
  -outfile result \
  -BsignBundle=false \
  -BappVersion=1.0 \
  -Bmac.dmg.simple=true \
  --module-path target/jmods \
  --module org.apache/org.apache.j9.Main
