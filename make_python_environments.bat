cd C:\Users\%username%\Documents\venvs

set "py_version=3.12"

rmdir /S /Q core_only
py -%py_version% -m venv --upgrade-deps core_only
call .\core_only\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
call deactivate.bat

rmdir /S /Q static
py -%py_version% -m venv --upgrade-deps static
call .\static\Scripts\activate.bat
REM coverage[toml] is no longer needed, as tomllib is now core python
REM pprofile is no longer supported, find different option to profile with
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py matplotlib mypy numpy openpyxl pandas pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy types-openpyxl types-python-dateutil scipy tblib urllib3
call deactivate.bat

rmdir /S /Q everything
py -%py_version% -m venv --upgrade-deps everything
call .\everything\Scripts\activate.bat
REM pprofile is no longer supported, find different option to profile with
python -m pip install pip wheel
python -m pip install coverage datashader h5py matplotlib mypy numba numpy openpyxl pandas pyarrow PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels tblib urllib3
REM python -m pip install dask[dataframe]
call deactivate.bat

rmdir /S /Q spyder
py -%py_version% -m venv --upgrade-deps spyder
call .\spyder\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook numpy pandas
REM This should not be necessary, but fixes problems with the virtual environment within spyder
python -m pip install h5py tblib
call deactivate.bat

rmdir /S /Q aiml
py -%py_version% -m venv --upgrade-deps aiml
call .\aiml\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader h5py matplotlib mypy numba numpy openpyxl pandas pyarrow PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib torch torchvision torchaudio urllib3
python -m pip install https://storage.googleapis.com/tensorflow/versions/2.16.1/tensorflow-2.16.1-cp312-cp312-win_amd64.whl
call deactivate.bat

REM rmdir /S /Q poetry_env
REM py -%py_version% -m venv --upgrade-deps poetry_env
REM call .\poetry_env\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install poetry
REM poetry config virtualenvs.create true
REM poetry config virtualenvs.in-project
REM poetry config virtualenvs.path "C:\Users\%username%\Documents\venvs\poetry_dstauffman"
REM call deactivate.bat
