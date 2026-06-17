cd C:\Users\%username%\Documents\venvs

REM uv self update
REM winget install --id=astral-sh.uv  -e

rmdir /S /Q core_only310
uv venv core_only310 --python 3.10
call .\core_only310\Scripts\activate.bat
uv pip install pytest pytest-cov
uv pip freeze > requirements_core_only310.txt
call deactivate.bat

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

rmdir /S /Q static312
uv venv static312 --python 3.12
call .\static312\Scripts\activate.bat
uv pip install black coverage h5py isort lxml lxml-stubs matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-openpyxl types-python-dateutil types-PyYAML
uv pip freeze > requirements_static312.txt
call deactivate.bat

rmdir /S /Q static313
uv venv static313 --python 3.13
call .\static313\Scripts\activate.bat
uv pip install black coverage h5py isort lxml lxml-stubs matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-openpyxl types-python-dateutil types-PyYAML
uv pip freeze > requirements_static313.txt
call deactivate.bat

rmdir /S /Q static314
uv venv static314 --python 3.14
call .\static314\Scripts\activate.bat
uv pip install black coverage h5py isort lxml lxml-stubs matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-openpyxl types-python-dateutil types-PyYAML
uv pip freeze > requirements_static314.txt
call deactivate.bat

rmdir /S /Q everything310
uv venv everything310 --python 3.10
call .\everything310\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything310.txt
call deactivate.bat

rmdir /S /Q everything311
uv venv everything311 --python 3.11
call .\everything311\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything311.txt
call deactivate.bat

rmdir /S /Q everything312
uv venv everything312 --python 3.12
call .\everything312\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything312.txt
call deactivate.bat

rmdir /S /Q everything313
uv venv everything313 --python 3.13
call .\everything313\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything313.txt
call deactivate.bat

rmdir /S /Q everything314
uv venv everything314 --python 3.14
call .\everything314\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
uv pip freeze > requirements_everything314.txt
call deactivate.bat

rmdir /S /Q spyder312
uv venv spyder312 --python 3.12
call .\spyder312\Scripts\activate.bat
uv pip install spyder h5py numpy pandas tblib
uv pip freeze > requirements_spyder312.txt
call deactivate.bat

rmdir /S /Q spyder313
uv venv spyder313 --python 3.13
call .\spyder313\Scripts\activate.bat
uv pip install spyder h5py numpy pandas tblib
uv pip freeze > requirements_spyder313.txt
call deactivate.bat

rmdir /S /Q spyder314
uv venv spyder314 --python 3.14
call .\spyder314\Scripts\activate.bat
uv pip install spyder h5py numpy pandas tblib
uv pip freeze > requirements_spyder314.txt
call deactivate.bat

rmdir /S /Q aiml312
uv venv aiml312 --python 3.12
call .\aiml312\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_aiml312.txt
call deactivate.bat

rmdir /S /Q aiml313
uv venv aiml312 --python 3.13
call .\aiml313\Scripts\activate.bat
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_aiml313.txt
call deactivate.bat

rmdir /S /Q jax312
uv venv jax312 --python 3.12
call .\jax312\Scripts\activate.bat
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
uv pip freeze > requirements_jax312.txt
call deactivate.bat

rmdir /S /Q jax313
uv venv jax313 --python 3.13
call .\jax313\Scripts\activate.bat
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
uv pip freeze > requirements_jax313.txt
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
python -m cyclonedx_py requirements requirements_core_only312_clean.txt -o sbom_core_only312.json --of json
python -m cyclonedx_py requirements requirements_static312_clean.txt -o sbom_static312.json --of json
python -m cyclonedx_py requirements requirements_everything312_clean.txt -o sbom_everything312.json --of json
python -m cyclonedx_py requirements requirements_spyder312_clean.txt -o sbom_spyder312.json --of json
python -m cyclonedx_py requirements requirements_aiml312_clean.txt -o sbom_aiml312.json --of json
