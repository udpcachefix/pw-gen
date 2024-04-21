@echo off
setlocal EnableDelayedExpansion
set "password="
set "characters=aAbBcCdDeEfFgGhHiIjJkKlLmMnNoOpPqQrRsStTuUvVwWxXyYzZ0123456789!@#$%^&*()_-+=[]{};:,.<>?"

for /L %%N in (1,1,16) do (
  set /A "rand=!random! %% 78"
  for /F "delims=" %%I in ("!rand!") do set "password=!password!!characters:~%%I,1!"
)

echo Your password is: !password!
echo !password! | clip
echo The password has been copied to your clipboard.
pause
endlocal
