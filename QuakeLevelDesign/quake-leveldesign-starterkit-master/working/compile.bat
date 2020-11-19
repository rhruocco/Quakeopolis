@echo off

cd\
cd C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\working


echo Copying Files...
copy C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\id1\maps\firstmap.map C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\qbsp.exe firstmap

echo --------------VIS---------------
C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\vis.exe firstmap

echo -------------LIGHT--------------
C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\tools\ericw-tools\bin\light.exe firstmap

copy firstmap.bsp C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\id1\maps
copy firstmap.pts C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\id1\maps
copy firstmap.lit C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master\id1\maps
pause
cd\
cd C:\Users\Ryan\Documents\QuakeLevelDesign\quake-leveldesign-starterkit-master
quakespasm  +map firstmap
