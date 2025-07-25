cd C:\Users\%username%\Documents\venvs

set "py_version=3.13"

py -%py_version% -m pip install --upgrade pip

rmdir /S /Q core_only_pip
py -%py_version% -m venv --upgrade-deps core_only_pip
call .\core_only_pip\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
call deactivate.bat

rmdir /S /Q static_pip
py -%py_version% -m venv --upgrade-deps static_pip
call .\static_pip\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov qtpy ruff scipy sympy tblib types-openpyxl types-python-dateutil
call deactivate.bat

rmdir /S /Q everything_pip
py -%py_version% -m venv --upgrade-deps everything_pip
call .\everything_pip\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader h5py matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
call deactivate.bat

rmdir /S /Q spyder_pip
py -%py_version% -m venv --upgrade-deps spyder_pip
call .\spyder_pip\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook numpy pandas
REM This should not be necessary, but fixes problems with the virtual environment within spyder
python -m pip install h5py tblib
call deactivate.bat

rmdir /S /Q aiml_pip
REM py -%py_version% -m venv --upgrade-deps aiml_pip
py -3.12 -m venv --upgrade-deps aiml_pip
call .\aiml_pip\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
call deactivate.bat
