cd C:\Users\%username%\Documents\venvs

set "py_version=3.13"

REM uv self update
REM winget install --id=astral-sh.uv  -e

rmdir /S /Q core_only
uv venv core_only --python %py_version%
call .\core_only\Scripts\activate.bat
uv pip install pytest pytest-cov
call deactivate.bat

rmdir /S /Q static
uv venv static --python %py_version%
call .\static\Scripts\activate.bat
uv pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy scipy tblib types-openpyxl types-python-dateutil
call deactivate.bat

rmdir /S /Q everything
uv venv everything --python %py_version%
call .\everything\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyPDF2 PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
call deactivate.bat

rmdir /S /Q spyder
uv venv spyder --python %py_version%
call .\spyder\Scripts\activate.bat
uv pip install spyder ipykernel jupyterlab notebook numpy pandas
REM This should not be necessary, but fixes problems with the virtual environment within spyder
uv pip install h5py tblib
call deactivate.bat

rmdir /S /Q aiml
REM uv venv aiml --python %py_version%
uv venv aiml --python 3.12
call .\aiml\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
call deactivate.bat
