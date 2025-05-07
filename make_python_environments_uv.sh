cd $HOME/Documents/venvs

export "py_version=3.13"

#curl -LsSf https://astral.sh/uv/install.sh | sh
#uv self update

rm -rf core_only
uv venv core_only --python $py_version
source core_only/bin/activate
uv pip install pytest-cov
deactivate

rm -rf static
uv venv static --python $py_version
source static/bin/activate
uv pip install black coverage flake8 h5py isort matplotlib mypy numpy openpyxl pandas pprofile pyarrow pylint PyQt5 PyQt5-Stubs pyright pytest-cov qtpy scipy tblib types-openpyxl types-python-dateutil
deactivate

rm -rf everything
uv venv everything --python $py_version
source everything/bin/activate
uv pip install coverage dask[dataframe] datashader h5py matplotlib mypy numba numpy openpyxl pandas pprofile pyarrow PyPDF2 PyQt5 pyqtgraph pytest-cov qtpy scipy spyder-kernels sympy tblib
deactivate

rm -rf spyder
uv venv spyder --python $py_version
source spyder/bin/activate
uv pip install spyder ipykernel jupyterlab notebook numpy pandas h5py tblib
deactivate

rm -rf aiml
#uv venv aiml --python $py_version
uv venv aiml --python 3.12
source aiml/bin/activate
uv pip install coverage dask[dataframe] datashader graphviz h5py jax matplotlib mypy numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest-cov qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow torch torchvision torchaudio tqdm urllib3
deactivate
