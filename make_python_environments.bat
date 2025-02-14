cd C:\Users\%username%\Documents\venvs

set "py_version=3.13"

py -%py_version% -m pip install --upgrade pip

rmdir /S /Q core_only
py -%py_version% -m venv --upgrade-deps core_only
call .\core_only\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
call deactivate.bat

rmdir /S /Q static
py -%py_version% -m venv --upgrade-deps static
call .\static\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy scipy tblib types-openpyxl types-python-dateutil
call deactivate.bat

rmdir /S /Q everything
py -%py_version% -m venv --upgrade-deps everything
call .\everything\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyPDF2 PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
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
REM py -%py_version% -m venv --upgrade-deps aiml
py -3.12 -m venv --upgrade-deps aiml
call .\aiml\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio urllib3
python -m pip install tqdm
call deactivate.bat
