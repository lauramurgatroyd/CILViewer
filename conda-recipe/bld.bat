xcopy /e "%RECIPE_DIR%\.." "%SRC_DIR%"

%PYTHON% setup.py -q bdist_egg
:: %PYTHON% setup.py install --single-version-externally-managed --record=record.txt
%PYTHON% setup.py install
if errorlevel 1 exit 1