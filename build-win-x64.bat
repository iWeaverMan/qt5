::::::::::::::::::::::::::::::::::::::::
::                                    ::
::          8000000000000008          ::
::         000000000000000000         ::
::        00000000000000000000        ::
::       0000000        0000000       ::
::      000000  00000000  000000      ::
::     000000 800000000865 800000     ::
::    800000  60000000       00008    ::
::    800008        000006  000008    ::
::     000  8 568000000000 000000     ::
::      000000  00000000  000000      ::
::       0000000        0000000       ::
::        00000000000000000000        ::
::         000000000000000000         ::
::          8000000000000008          ::
::                                    ::
::           Roman Tkachev            ::
::                                    ::
::::::::::::::::::::::::::::::::::::::::

@echo off
SET PATH_NAME=Qt5-5.15.16-win-x64

SET _ROOT=%cd%
SET PATH=%_ROOT%\qtbase\bin;%_ROOT%\gnuwin32\bin;%PATH%
SET _ROOT=
SET CL=/MP

cd ..
mkdir %PATH_NAME%
cd %PATH_NAME%
CALL "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
CALL ..\qt5\configure.bat -prefix C:\Qt\%PATH_NAME% -platform win32-msvc -opengl dynamic -debug-and-release -static -static-runtime -nomake examples -nomake tests -opensource -confirm-license -skip qt3d -skip qtwebengine -skip qtlocation -skip qtcharts -skip qtquick3d -skip qtlottie -skip qtspeech -skip qtdatavis3d -skip qtcanvas3d
CALL nmake
CALL nmake install

echo Done.