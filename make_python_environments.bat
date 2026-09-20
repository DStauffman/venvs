cd C:\Users\%username%\Documents\venvs

set "py_version=3.14"

REM uv self update
REM winget install --id=astral-sh.uv  -e

rmdir /S /Q core_only
uv venv core_only --python %py_version%
call .\core_only\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_windows_core_only.txt
call deactivate.bat

rmdir /S /Q static
uv venv static --python %py_version%
call .\static\Scripts\activate.bat
uv pip install black coverage h5py isort lxml matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pylint-exit pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-lxml types-openpyxl types-python-dateutil types-PyYAML types-toml
uv pip freeze > requirements_windows_static.txt
call deactivate.bat

rmdir /S /Q everything
uv venv everything --python %py_version%
call .\everything\Scripts\activate.bat
uv pip install atlassian-python-api coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pillow-heif polars pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tables tblib
uv pip freeze > requirements_windows_everything.txt
call deactivate.bat

rmdir /S /Q spyder
uv venv spyder --python %py_version%
call .\spyder\Scripts\activate.bat
uv pip install spyder h5py numpy pandas polars tblib
uv pip freeze > requirements_windows_spyder.txt
call deactivate.bat

rmdir /S /Q jupyter
uv venv jupyter --python %py_version%
call .\jupyter\Scripts\activate.bat
uv pip install jupyterlab
uv pip freeze > requirements_windows_jupyter.txt
call deactivate.bat

rmdir /S /Q aiml
REM uv venv aiml --python %py_version%
uv venv aiml --python 3.13
call .\aiml\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_windows_aiml.txt
call deactivate.bat

rmdir /S /Q jax
uv venv jax --python %py_version%
call .\jax\Scripts\activate.bat
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
uv pip freeze > requirements_windows_jax.txt
call deactivate.bat

rmdir /S /Q py315
uv venv py315 --python 3.15
call .\py315\Scripts\activate.bat
uv pip install pytest pytest-cov numpy
uv pip freeze > requirements_windows_py315.txt
call deactivate.bat
