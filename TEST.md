"D:\Programs\WC3 Tools\MPQ Editors\Ladik Editors\MPQ Editor 3.6.0.852.exe" extract "UjAPIFiles\UjAPI.mpq" * "UjAPIFiles\Extracted" /fp
pause


Пример экстракта всего.
Del "UjAPIFiles\UjAPI.mpq"
"D:\Programs\WC3 Tools\MPQ Editors\Ladik Editors\MPQ Editor 3.6.0.852.exe" new "UjAPIFiles\UjAPI.mpq" 256
"D:\Programs\WC3 Tools\MPQ Editors\Ladik Editors\MPQ Editor 3.6.0.852.exe" add "UjAPIFiles\UjAPI.mpq" "UjAPIFiles\MPQFiles" /c /auto /r
"D:\Programs\WC3 Tools\MPQ Editors\Ladik Editors\MPQ Editor 3.6.0.852.exe" compact "UjAPIFiles\UjAPI.mpq";
pause
