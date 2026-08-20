cd C:\Users\%username%\Documents\venvs

REM uv self update
REM winget install --id=astral-sh.uv  -e

rmdir /S /Q core_only311
uv venv core_only311 --python 3.11
call .\core_only311\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only311.txt
call deactivate.bat

rmdir /S /Q core_only312
uv venv core_only312 --python 3.12
call .\core_only312\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only312.txt
call deactivate.bat

rmdir /S /Q core_only313
uv venv core_only313 --python 3.13
call .\core_only313\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only313.txt
call deactivate.bat

rmdir /S /Q core_only314
uv venv core_only314 --python 3.14
call .\core_only314\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only314.txt
call deactivate.bat

rmdir /S /Q core_only315
uv venv core_only315 --python 3.15
call .\core_only315\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only315.txt
call deactivate.bat

rmdir /S /Q static314
uv venv static314 --python 3.14
call .\static314\Scripts\activate.bat
uv pip install black coverage h5py isort lxml matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pylint-exit pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-lxml types-openpyxl types-python-dateutil types-PyYAML types-toml
uv pip freeze > requirements_static314.txt
call deactivate.bat

rmdir /S /Q everything314
uv venv everything314 --python 3.14
call .\everything314\Scripts\activate.bat
uv pip install atlassian-python-api coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything314.txt
call deactivate.bat

rmdir /S /Q spyder314
uv venv spyder314 --python 3.14
call .\spyder314\Scripts\activate.bat
uv pip install spyder h5py numpy pandas tblib
uv pip freeze > requirements_spyder314.txt
call deactivate.bat

rmdir /S /Q jupyter314
uv venv jupyter314 --python %py_version%
call .\jupyter314\Scripts\activate.bat
uv pip install jupyterlab
uv pip freeze > requirements_jupyter314.txt
call deactivate.bat

rmdir /S /Q aiml313
uv venv aiml313 --python 3.13
call .\aiml313\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_aiml313.txt
call deactivate.bat

rmdir /S /Q jax314
uv venv jax314 --python 3.14
call .\jax314\Scripts\activate.bat
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
uv pip freeze > requirements_jax314.txt
call deactivate.bat

rmdir /S /Q hoppr
uv venv hoppr --python 3.14
call .\hoppr\Scripts\activate.bat
uv pip install cyclonedx-bom hoppr

REM replace underscores with dashes in any requirements file
python requirements_cleanup.py .

REM build BOM
python -m cyclonedx_py requirements requirements_core_only314_clean.txt -o sbom_core_only314.json --of json
python -m cyclonedx_py requirements requirements_static314_clean.txt -o sbom_static314.json --of json
python -m cyclonedx_py requirements requirements_everything314_clean.txt -o sbom_everything314.json --of json
python -m cyclonedx_py requirements requirements_spyder314_clean.txt -o sbom_spyder314.json --of json
python -m cyclonedx_py requirements requirements_jupyter314_clean.txt -o sbom_jupyter314.json --of json
python -m cyclonedx_py requirements requirements_aiml313_clean.txt -o sbom_aiml313.json --of json
python -m cyclonedx_py requirements requirements_jax314_clean.txt -o sbom_jax314.json --of json
