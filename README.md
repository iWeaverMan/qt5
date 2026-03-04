```
/*****************************

       8000000000000008       
      000000000000000000      
     00000000000000000000     
    0000000        0000000    
   000000  00000000  000000   
  000000 800000000865 800000  
 800000  60000000       00008 
 800008        000006  000008 
  000  8 568000000000 000000  
   000000  00000000  000000   
    0000000        0000000    
     00000000000000000000     
      000000000000000000      
       8000000000000008 

         Qt for build 
   Astraeus native library

*****************************/
```

MacOS
=====

#### 1. Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#### 2. Install JDK
    brew install openjdk@17

    sudo ln -sfn /opt/homebrew/opt/openjdk@17/libexec/openjdk.jdk \
        /Library/Java/JavaVirtualMachines/openjdk.jdk

##### Set environment

    export JAVA_HOME=$(/usr/libexec/java_home -v 17) 
    export PATH=$JAVA_HOME/bin:$PATH

#### 3. Install Android SDK and NDK
    brew install --cask android-commandlinetools
    brew install --cask android-platform-tools
    sdkmanager "platform-tools" "platforms;android-35" "ndk;29.0.14206865" "build-tools;35.0.0"
Read terms and conditions

    January 16, 2019
    ---------------------------------------
    Accept? (y/N):

##### Set environment

    export ANDROID_SDK_ROOT="/opt/homebrew/share/android-commandlinetools"
    export ANDROID_NDK_ROOT="$ANDROID_SDK_ROOT/ndk/29.0.14206865"

#### 4. Xcode
Install Xcode Version 26.0 (17A324)

#### 5. Download
    git clone https://github.com/iWeaverMan/qt5
    cd qt5
    git submodule update --init --recursive

#### 6. Build
    ./build-android.sh
    ./build-ios-arm64.sh
    ./build-ios-simulator-arm64.sh.sh
    ./build-ios-simulator-x64.sh
    ./build-mac-arm64.sh
    ./build-mac-x64.sh

Windows
=======

#### 1. Install Git
Download https://gitforwindows.org and run the installer.

#### 2. Install Visual Studio Community 2022
Download https://visualstudio.microsoft.com/ru/vs/community/ and run the installer.
Install:
- MSVC version 143 - VS 2022 C+ x64/х86
- Windows 11 SDK (10.0.22621.0)

#### 3. Download
    git clone https://github.com/iWeaverMan/qt5
    cd qt5
    git submodule update --init --recursive

#### 4. Build
    build-win-x64.bat
    build-win-x86.bat
