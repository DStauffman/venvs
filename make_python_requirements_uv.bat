cd C:\Users\%username%\Documents\venvs

REM uv self update
REM winget install --id=astral-sh.uv  -e

rmdir /S /Q core_only312
uv venv core_only312 --python 3.12
call .\core_only312\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only312.txt
call deactivate.bat

rmdir /S /Q static312
uv venv static312 --python 3.12
call .\static312\Scripts\activate.bat
uv pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy ruff scipy sympy tblib types-openpyxl types-python-dateutil
uv pip freeze > requirements_static312.txt
call deactivate.bat

rmdir /S /Q capt312
uv venv capt312 --python 3.12
call .\capt312\Scripts\activate.bat
uv pip install dask[dataframe] datashader h5py matplotlib numba numpy openpyxl pandas pyarrow PyQt5 qtpy scipy tblib
uv pip freeze > requirements_capt312.txt
call deactivate.bat

rmdir /S /Q everything312
uv venv everything312 --python 3.12
call .\everything312\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py matplotlib numba numpy openpyxl pandas pprofile pyarrow pypdf PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything312.txt
call deactivate.bat

rmdir /S /Q spyder312
uv venv spyder312 --python 3.12
call .\spyder312\Scripts\activate.bat
uv pip install spyder h5py ipykernel jupyterlab notebook numpy pandas tblib
uv pip freeze > requirements_spyder312.txt
call deactivate.bat

rmdir /S /Q aiml312
uv venv aiml312 --python 3.12
call .\aiml312\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_aiml312.txt
call deactivate.bat

rmdir /S /Q hoppr
uv venv hoppr --python 3.12
call .\hoppr\Scripts\activate.bat
uv pip install cyclonedx-bom hoppr

REM replace underscores with dashes in any requirements file
python requirements_cleanup.py .

REM build BOM
python -m cyclonedx_py requirements requirements_core_only312_clean.txt -o sbom_core_only312.json --of json
python -m cyclonedx_py requirements requirements_static312_clean.txt -o sbom_static312.json --of json
python -m cyclonedx_py requirements requirements_everything312_clean.txt -o sbom_everything312.json --of json
python -m cyclonedx_py requirements requirements_spyder312_clean.txt -o sbom_spyder312.json --of json
python -m cyclonedx_py requirements requirements_aiml312_clean.txt -o sbom_aiml312.json --of json
