cd $HOME/Documents/venvs

export "py_version=3.14"

#python3.12 -m pip install --upgrade pip
#python$py_version -m pip install --upgrade pip

rm -rf core_only
python$py_version -m venv --upgrade-deps core_only
source core_only/bin/activate
python -m pip install pip wheel
python -m pip install pytest pytest-cov
deactivate

rm -rf static
python$py_version -m venv --upgrade-deps static
source static/bin/activate
python -m pip install pip wheel
python -m pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov qtpy ruff scipy sympy tblib ty types-openpyxl types-python-dateutil
deactivate

rm -rf everything
python$py_version -m venv --upgrade-deps everything
source everything/bin/activate
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader h5py matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
deactivate

rm -rf spyder
python$py_version -m venv --upgrade-deps spyder
source spyder/bin/activate
python -m pip install pip wheel
python -m pip install spyder h5py ipykernel jupyterlab notebook numpy pandas tblib
deactivate

rm -rf aiml
#python$py_version -m venv --upgrade-deps aiml
python3.13 -m venv --upgrade-deps aiml
source aiml/bin/activate
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow torch torchvision torchaudio tqdm urllib3
deactivate

rm -rf jax
python$py_version -m venv --upgrade-deps jax
source jax/bin/activate
python -m pip install pip wheel
python -m pip install h5py jax keras matplotlib numpy pandas PyQt5 pytest qtpy scipy seaborn tblib
deactivate
