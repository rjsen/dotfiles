#!/bin/sh

cp .emacs ~
cp .bash_profile ~
curl http://braeburn.aquamacs.org/releases/Aquamacs-Emacs-2.5.dmg > Aquamacs.dmg
hdiutil attach Aquamacs.dmg
mkdir ~/bin
cp -r /Volumes/Aquamacs\ Emacs/Aquamacs.app ~/bin
curl http://www.scala-lang.org/files/archive/scala-2.10.3.tgz > scala.tgz
curl http://www.scala-lang.org/files/archive/scala-tool-support-2.10.3.tgz > scala-tools.tgz
curl http://repo.scala-sbt.org/scalasbt/sbt-native-packages/org/scala-sbt/sbt/0.13.0/sbt.tgz > sbt.tgz
mv scala.tgz ~
mv scala-tools.tgz ~
mv sbt.tgz ~
cd ~
tar xzvf scala.tgz
ln -s scala scala-2.10.3
tar xzvf scala-tools.tgz
tar xzvf sbt.tgz
. .bash_profile
