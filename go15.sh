#!/bin/sh
chmod 000 coremods/GuiAPI*
cp server.properties server.properties.orig
rm -rf *log*
#java -Dfml.debugClassLoading=true -Dfml.debugClassLoadingFiner=true -mx2G -jar snapshot.jar
java -mx2G -jar snapshot.jar
mv server.properties.orig server.properties
chmod 644 coremods/GuiAPI*
