JDK JMOD/JLINK/JAR
==================

Overview
--------

We can have simply JAR files which contain
a `module-info.class` which describes to which
module a jar represents.

A jmod file is a module plus module-info.class and
some more files like configuration files and
native files.

So a path can be:

Having a `jar`-file which will be converted to a `jmod`-file.
And later all jmod files will be linked into a runtime image
via jlink.
