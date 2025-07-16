@echo off
for /f "tokens=*" %%L in ('wevtutil el') do wevtutil cl "%%L"
echo done.
pause > NUL