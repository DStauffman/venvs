cd C:\Users\%username%\Documents\venvs

REM py -3.8 -m pip install --upgrade pip
REM py -3.9 -m pip install --upgrade pip
REM py -3.10 -m pip install --upgrade pip
py -3.11 -m pip install --upgrade pip
py -3.12 -m pip install --upgrade pip

REM rmdir /S /Q everything38
REM py -3.8 -m venv everything38
REM call .\everything38\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage[toml] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov python-dateutil qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything38.txt
REM call deactivate.bat

REM rmdir /S /Q everything39
REM py -3.9 -m venv --upgrade-deps everything39
REM call .\everything39\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage[toml] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov python-dateutil qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything39.txt
REM call deactivate.bat

REM rmdir /S /Q everything310
REM py -3.10 -m venv --upgrade-deps everything310
REM call .\everything310\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage[toml] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov python-dateutil qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything310.txt
REM call deactivate.bat

rmdir /S /Q core_only311
py -3.11 -m venv --upgrade-deps core_only311
call .\core_only311\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
python -m pip freeze > requirements_core_only311.txt
call deactivate.bat

rmdir /S /Q static311
py -3.11 -m venv --upgrade-deps static311
call .\static311\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy types-openpyxl types-python-dateutil scipy tblib
python -m pip freeze > requirements_static311.txt
call deactivate.bat

rmdir /S /Q everything311
py -3.11 -m venv --upgrade-deps everything311
call .\everything311\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov qtpy scipy spyder-kernels tblib
python -m pip freeze > requirements_everything311.txt
call deactivate.bat

rmdir /S /Q spyder311
py -3.11 -m venv --upgrade-deps spyder311
call .\spyder311\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook
python -m pip freeze > requirements_spyder311.txt
call deactivate.bat

rmdir /S /Q core_only312
py -3.12 -m venv --upgrade-deps core_only312
call .\core_only312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
python -m pip freeze > requirements_core_only312.txt
call deactivate.bat

rmdir /S /Q static312
py -3.12 -m venv --upgrade-deps static312
call .\static312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py matplotlib mypy numpy openpyxl pandas pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy types-openpyxl types-python-dateutil scipy tblib
REM Removed pprofile
python -m pip freeze > requirements_static312.txt
call deactivate.bat

rmdir /S /Q everything312
py -3.12 -m venv --upgrade-deps everything312
call .\everything312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage datashader h5py matplotlib mypy numba numpy openpyxl pandas pyarrow PyQt5 pytest pytest-cov qtpy scipy spyder-kernels tblib
REM python -m pip install dask[dataframe]
REM Removed pprofile
python -m pip freeze > requirements_everything312.txt
call deactivate.bat

rmdir /S /Q spyder312
py -3.12 -m venv --upgrade-deps spyder312
call .\spyder312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook
python -m pip freeze > requirements_spyder312.txt
call deactivate.bat

rmdir /S /Q hoppr
py -3.12 -m venv --upgrade-deps hoppr
call .\hoppr\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install cyclonedx-bom hoppr

REM replace underscores with dashes in any requirements file
python requirements_cleanup.py .

REM build BOM
REM python -m cyclonedx_py requirements requirements_core_only310_clean.txt -o sbom_core_only310.json --format --of json
REM python -m cyclonedx_py requirements requirements_static310_clean.txt -o sbom_static310.json --format --of json
REM python -m cyclonedx_py requirements requirements_everything310_clean.txt -o sbom_everything310.json --format --of json
REM python -m cyclonedx_py requirements requirements_spyder310_clean.txt -o sbom_spyder310.json --format --of json
python -m cyclonedx_py requirements requirements_core_only311_clean.txt -o sbom_core_only311.json --format --of json
python -m cyclonedx_py requirements requirements_static311_clean.txt -o sbom_static311.json --format --of json
python -m cyclonedx_py requirements requirements_everything311_clean.txt -o sbom_everything311.json --format --of json
python -m cyclonedx_py requirements requirements_spyder311_clean.txt -o sbom_spyder311.json --format --of json
python -m cyclonedx_py requirements requirements_core_only312_clean.txt -o sbom_core_only312.json --of json
python -m cyclonedx_py requirements requirements_static312_clean.txt -o sbom_static312.json --of json
python -m cyclonedx_py requirements requirements_everything312_clean.txt -o sbom_everything312.json --of json
python -m cyclonedx_py requirements requirements_spyder312_clean.txt -o sbom_spyder312.json --of json
