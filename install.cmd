@echo off
echo Instalacia nastrojov pre LaTeX
echo Link na repo: https://github.com/Jakuko99/tex-sablona
echo.

echo Instalovanie MiKTeX ...
winget install MiKTeX.MiKTeX

echo Instalovanie Perl ...
winget install StrawberryPerl.StrawberryPerl

echo Instalovanie TeXstudio ...
winget install TeXstudio.TeXstudio

echo Hotovo.
pause