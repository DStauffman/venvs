cd C:\Users\%username%\Documents\venvs

REM py -3.8 -m pip install --upgrade pip
REM py -3.9 -m pip install --upgrade pip
REM py -3.10 -m pip install --upgrade pip
REM py -3.11 -m pip install --upgrade pip
py -3.12 -m pip install --upgrade pip
py -3.13 -m pip install --upgrade pip

REM rmdir /S /Q everything38
REM py -3.8 -m venv everything38
REM call .\everything38\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage[toml] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov python-dateutil qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything38.txt
REM call deactivate.bat

REM rmdir /S /Q everything39
REM py -3.9 -m venv --upgrade-deps everything39
REM call .\everything39\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage[toml] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov python-dateutil qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything39.txt
REM call deactivate.bat

REM rmdir /S /Q everything310
REM py -3.10 -m venv --upgrade-deps everything310
REM call .\everything310\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage[toml] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov python-dateutil qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything310.txt
REM call deactivate.bat

REM rmdir /S /Q everything311
REM py -3.11 -m venv --upgrade-deps everything311
REM call .\everything311\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyQt5 pytest pytest-cov qtpy scipy spyder-kernels tblib
REM python -m pip freeze > requirements_everything311.txt
REM call deactivate.bat

rmdir /S /Q core_only312
py -3.12 -m venv --upgrade-deps core_only312
call .\core_only312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
python -m pip freeze > requirements_core_only312.txt
call deactivate.bat

rmdir /S /Q static312
py -3.12 -m venv --upgrade-deps static312
call .\static312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy scipy tblib types-openpyxl types-python-dateutil
python -m pip freeze > requirements_static312.txt
call deactivate.bat

rmdir /S /Q everything312
py -3.12 -m venv --upgrade-deps everything312
call .\everything312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyPDF2 PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
python -m pip freeze > requirements_everything312.txt
call deactivate.bat

rmdir /S /Q spyder312
py -3.12 -m venv --upgrade-deps spyder312
call .\spyder312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook numpy pandas
REM This should not be necessary, but fixes problems with the virtual environment within spyder
python -m pip install h5py tblib
python -m pip freeze > requirements_spyder312.txt
call deactivate.bat

rmdir /S /Q aiml312
py -3.12 -m venv --upgrade-deps aiml312
call .\aiml312\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio urllib3
python -m pip install tqdm
python -m pip freeze > requirements_aiml312.txt
call deactivate.bat

rmdir /S /Q core_only313
py -3.13 -m venv --upgrade-deps core_only313
call .\core_only313\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install pytest pytest-cov
python -m pip freeze > requirements_core_only313.txt
call deactivate.bat

rmdir /S /Q static313
py -3.13 -m venv --upgrade-deps static313
call .\static313\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy scipy tblib types-openpyxl types-python-dateutil
python -m pip freeze > requirements_static313.txt
call deactivate.bat

rmdir /S /Q everything313
py -3.13 -m venv --upgrade-deps everything313
call .\everything313\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] h5py matplotlib mypy numpy openpyxl pandas pprofile pyarrow PyPDF2 PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
REM numba (thus datashader)
python -m pip freeze > requirements_everything313.txt
call deactivate.bat

rmdir /S /Q spyder313
py -3.13 -m venv --upgrade-deps spyder313
call .\spyder313\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook numpy pandas
REM This should not be necessary, but fixes problems with the virtual environment within spyder
python -m pip install h5py tblib
python -m pip freeze > requirements_spyder313.txt
call deactivate.bat

REM rmdir /S /Q aiml313
REM py -3.13 -m venv --upgrade-deps aiml313
REM call .\aiml313\Scripts\activate.bat
REM python -m pip install pip wheel
REM python -m pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio urllib3
REM python -m pip install tqdm
REM python -m pip freeze > requirements_aiml313.txt
REM call deactivate.bat

rmdir /S /Q hoppr
py -3.12 -m venv --upgrade-deps hoppr
call .\hoppr\Scripts\activate.bat
python -m pip install pip wheel
python -m pip install cyclonedx-bom hoppr

REM replace underscores with dashes in any requirements file
python requirements_cleanup.py .

REM build BOM
REM python -m cyclonedx_py requirements requirements_core_only311.txt -o sbom_core_only311.json --of json
REM python -m cyclonedx_py requirements requirements_static311.txt -o sbom_static311.json --of json
REM python -m cyclonedx_py requirements requirements_everything311.txt -o sbom_everything311.json --of json
REM python -m cyclonedx_py requirements requirements_spyder311.txt -o sbom_spyder311.json --of json
python -m cyclonedx_py requirements requirements_core_only312.txt -o sbom_core_only312.json --of json
python -m cyclonedx_py requirements requirements_static312.txt -o sbom_static312.json --of json
python -m cyclonedx_py requirements requirements_everything312.txt -o sbom_everything312.json --of json
python -m cyclonedx_py requirements requirements_spyder312.txt -o sbom_spyder312.json --of json
python -m cyclonedx_py requirements requirements_aiml312.txt -o sbom_aiml312.json --of json
python -m cyclonedx_py requirements requirements_core_only313.txt -o sbom_core_only313.json --of json
python -m cyclonedx_py requirements requirements_static313.txt -o sbom_static313.json --of json
python -m cyclonedx_py requirements requirements_everything313.txt -o sbom_everything313.json --of json
python -m cyclonedx_py requirements requirements_spyder313.txt -o sbom_spyder313.json --of json
REM python -m cyclonedx_py requirements requirements_aiml313.txt -o sbom_aiml313.json --of json
