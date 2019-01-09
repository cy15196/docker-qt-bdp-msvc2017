FROM tetsurom/vctools:recommended-latest

ADD http://download.qt.io/official_releases/online_installers/qt-unified-windows-x86-online.exe C:/TEMP
ADD qt-installer-noninteractive.qs C:/TEMP

RUN C:\TEMP\qt-unified-windows-x86-online.exe --script C:\TEMP\qt-installer-noninteractive.qs

RUN setx path "%path%;C:\Qt\5.9.7\msvc2017_64\bin"
