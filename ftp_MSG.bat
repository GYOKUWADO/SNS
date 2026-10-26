@echo off
chcp 932

ImageMagick-7.1.1-18-portable-Q16-x64\convert -gravity center -size 200x50 label:"%date%-%time%" %USERPROFILE%\OneDrive\time.gif

python captcha_safe_AI.py

set FTP_HOST=
set FTP_USER=
set FTP_PASS=

set LOCAL_FILE=%USERPROFILE%\OneDrive\MSG.html
set LOCAL_FILE_TIME=%USERPROFILE%\OneDrive\time.gif
set LOCAL_FILE_OUT=%USERPROFILE%\OneDrive\out.png
set REMOTE_DIR=public_html

set SCRIPT=%TEMP%\ftpcmd_%RANDOM%.txt

echo open %FTP_HOST% > %SCRIPT%
echo user %FTP_USER% %FTP_PASS% >> %SCRIPT%
echo binary >> %SCRIPT%
echo cd %REMOTE_DIR% >> %SCRIPT%
echo put "%LOCAL_FILE%" MSG.html >> %SCRIPT%
echo put "%LOCAL_FILE_TIME%" time.gif >> %SCRIPT%
echo put "%LOCAL_FILE_OUT%" out.png >> %SCRIPT%
echo bye >> %SCRIPT%

ftp -n -s:%SCRIPT%

chcp 932