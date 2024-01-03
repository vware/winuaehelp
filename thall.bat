@echo off
for /f "tokens=*" %%a in ('dir /b /s *.htm') do tidy --doctype html5 --output-html yes --char-encoding utf8 --newline crlf --clean yes --indent auto -quiet --tidy-mark no --wrap 68 --write-back yes --add-meta-charset yes "%%a" | echo file: %%a
echo end.
pause