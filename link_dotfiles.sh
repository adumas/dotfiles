#!/bin/bash
for b in `ls -1t ~/dotfile --color=none | grep "^_" | grep -v "~"`; do 
   file=`echo $b | sed "s:_:.:"`
   rm ~/$file
   ln -sv ~/dotfile/$b ~/$file
done
