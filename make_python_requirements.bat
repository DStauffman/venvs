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
uv pip install atlassian-python-api coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pillow-heif polars pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tables tblib tqdm
uv pip freeze > requirements_everything314.txt
call deactivate.bat

rmdir /S /Q spyder_ide314
uv venv spyder_ide314 --python 3.14
call .\spyder_ide314\Scripts\activate.bat
uv pip install spyder h5py numpy pandas polars tblib
uv pip freeze > requirements_spyder314_ide.txt
call deactivate.bat

rmdir /S /Q jupyter314
uv venv jupyter314 --python %py_version%
call .\jupyter314\Scripts\activate.bat
uv pip install jupyterlab
uv pip freeze > requirements_jupyter314.txt
call deactivate.bat

rmdir /S /Q aiml314
uv venv aiml314 --python 3.14
call .\aiml314\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy REM seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_aiml314.txt
call deactivate.bat

rmdir /S /Q jaxl314
uv venv jaxl314 --python 3.14
call .\jaxl314\Scripts\activate.bat
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
uv pip freeze > requirements_jaxl314.txt
call deactivate.bat

rmdir /S /Q hopper
uv venv hopper --python 3.14
call .\hopper\Scripts\activate.bat
uv pip install cyclonedx-bom hoppr

REM build BOM
python -m cyclonedx_py requirements requirements_core_only314.txt -o sbom_core_only314.json --of json
python -m cyclonedx_py requirements requirements_static314.txt -o sbom_static314.json --of json
python -m cyclonedx_py requirements requirements_everything314.txt -o sbom_everything314.json --of json
python -m cyclonedx_py requirements requirements_spyder_ide314.txt -o sbom_spyder314.json --of json
python -m cyclonedx_py requirements requirements_jupyter314.txt -o sbom_jupyter314.json --of json
python -m cyclonedx_py requirements requirements_aiml314.txt -o sbom_aiml313.json --of json
python -m cyclonedx_py requirements requirements_jaxl314.txt -o sbom_jax314.json --of json
