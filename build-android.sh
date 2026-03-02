#!/bin/bash

########################################
##                                    ##
##          8000000000000008          ##
##         000000000000000000         ##
##        00000000000000000000        ##
##       0000000        0000000       ##
##      000000  00000000  000000      ##
##     000000 800000000865 800000     ##
##    800000  60000000       00008    ##
##    800008        000006  000008    ##
##     000  8 568000000000 000000     ##
##      000000  00000000  000000      ##
##       0000000        0000000       ##
##        00000000000000000000        ##
##         000000000000000000         ##
##          8000000000000008          ##
##                                    ##
##           Roman Tkachev            ##
##                                    ##
########################################

PATH_NAME=Qt5-5.15.16-android

cd ..
mkdir $PATH_NAME
cd $PATH_NAME
../qt5/configure -prefix $HOME/Qt/$PATH_NAME -xplatform android-clang -disable-rpath -android-ndk-host darwin-x86_64 -android-ndk $ANDROID_NDK_ROOT -android-sdk $ANDROID_SDK_ROOT -no-warnings-are-errors -nomake examples -nomake tests -opensource -confirm-license -skip qt3d -skip qtwebengine -skip qtlocation -skip qtcharts -skip qtquick3d -skip qtlottie -skip qtspeech -skip qtdatavis3d -skip qtcanvas3d
make -j$(sysctl -n hw.ncpu)
make -j$(sysctl -n hw.ncpu) install

echo Done.