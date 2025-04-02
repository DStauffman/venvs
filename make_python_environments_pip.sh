cd $HOME/Documents/venvs

export "py_version=3.13"

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
python -m pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest pytest-cov qtpy scipy tblib types-openpyxl types-python-dateutil
deactivate

rm -rf everything
python$py_version -m venv --upgrade-deps everything
source everything/bin/activate
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyPDF2 PyQt5 pyqtgraph pytest pytest-cov qtpy scipy spyder-kernels sympy tblib
deactivate

rm -rf spyder
python$py_version -m venv --upgrade-deps spyder
source spyder/bin/activate
python -m pip install pip wheel
python -m pip install spyder ipykernel jupyterlab notebook numpy pandas
# This should not be necessary, but fixes problems with the virtual environment within spyder
python -m pip install h5py tblib
deactivate

rm -rf aiml
#python$py_version -m venv --upgrade-deps aiml
python3.12 -m venv --upgrade-deps aiml
source aiml/bin/activate
python -m pip install pip wheel
python -m pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow torch torchvision torchaudio urllib3
python -m pip install tqdm
deactivate

