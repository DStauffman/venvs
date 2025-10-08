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
uv pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov qtpy ruff scipy sympy tblib ty types-openpyxl types-python-dateutil
call deactivate.bat

rmdir /S /Q everything
uv venv everything --python %py_version%
call .\everything\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
call deactivate.bat

rmdir /S /Q spyder
uv venv spyder --python %py_version%
call .\spyder\Scripts\activate.bat
uv pip install spyder h5py ipykernel jupyterlab notebook numpy pandas tblib
call deactivate.bat

rmdir /S /Q aiml
REM uv venv aiml --python %py_version%
uv venv aiml --python 3.12
call .\aiml\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
call deactivate.bat

rmdir /S /Q jax
uv venv jax --python %py_version%
call .\jax\Scripts\activate.bat
uv pip install h5py jax keras matplotlib numpy pandas PyQt5 pytest qtpy scipy seaborn tblib
call deactivate.bat

