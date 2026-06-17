cd $HOME/Documents/venvs

export "py_version=3.14"

#curl -LsSf https://astral.sh/uv/install.sh | sh
#uv self update

rm -rf core_only
uv venv core_only --python $py_version
source core_only/bin/activate
uv pip install pytest pytest-cov
deactivate

rm -rf static
uv venv static --python $py_version
source static/bin/activate
uv pip install black coverage h5py isort lxml lxml-stubs matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-openpyxl types-python-dateutil types-PyYAML
deactivate

rm -rf everything
uv venv everything --python $py_version
source everything/bin/activate
uv pip install coverage dask[dataframe] datashader h5py lxml matplotlib numba numpy openpyxl pandas pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels sympy tblib
deactivate

rm -rf spyder
uv venv spyder --python $py_version
source spyder/bin/activate
uv pip install spyder h5py numpy pandas tblib
deactivate

rm -rf aiml
#uv venv aiml --python $py_version
uv venv aiml --python 3.13
source aiml/bin/activate
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
deactivate

rm -rf jax
uv venv jax --python $py_version
source jax/bin/activate
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
deactivate