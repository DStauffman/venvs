cd $HOME/Documents/venvs

export "py_version=3.14"

#curl -LsSf https://astral.sh/uv/install.sh | sh
#uv self update

rm -rf core_only
uv venv core_only --python $py_version
source core_only/bin/activate
uv pip install pytest pytest-cov
uv pip freeze > requirements_unix_core_only.txt
deactivate

rm -rf static
uv venv static --python $py_version
source static/bin/activate
uv pip install black coverage h5py isort lxml matplotlib mypy numpy openpyxl pandas pandas-stubs pprofile pyarrow pylint pylint-exit pypdf PyQt5 PyQt5-Stubs pytest pytest-cov pyyaml qtpy ruff scipy scipy-stubs sympy tblib ty types-lxml types-openpyxl types-python-dateutil types-PyYAML types-toml
uv pip freeze > requirements_unix_static.txt
deactivate

rm -rf everything
uv venv everything --python $py_version
source everything/bin/activate
uv pip install atlassian-python-api coverage dask[dataframe] datashader dotenv h5py lxml matplotlib numba numpy openpyxl pandas polars pprofile pyarrow PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scipy spyder-kernels tables tblib
uv pip freeze > requirements_unix_everything.txt
deactivate

rm -rf spyder
uv venv spyder --python $py_version
source spyder/bin/activate
uv pip install spyder h5py numpy pandas polars tblib
uv pip freeze > requirements_unix_spyder.txt
deactivate

rm -rf jupyter
uv venv jupyter --python $py_version
source jupyter/bin/activate
uv pip install jupyterlab
uv pip freeze > requirements_unix_jupyter.txt
deactivate

rm -rf aiml
#uv venv aiml --python $py_version
uv venv aiml --python 3.13
source aiml/bin/activate
uv pip install coverage dask[dataframe] datashader graphviz h5py jax lxml matplotlib numba numpy openpyxl pandas pyarrow pydot PyQt5 pyqtgraph pytest pytest-cov pyyaml qtpy scikit-learn scipy seaborn spyder-kernels tblib tensorflow-cpu torch torchvision torchaudio tqdm urllib3
uv pip freeze > requirements_unix_aiml.txt
deactivate

rm -rf jax
uv venv jax --python $py_version
source jax/bin/activate
uv pip install h5py jax lxml matplotlib numpy openpyxl pandas PyQt5 pytest pyyaml qtpy scipy tblib
uv pip freeze > requirements_unix_jax.txt
deactivate

rm -rf py315
uv venv py315 --python 3.15
source py315/bin/activate
uv pip install pytest pytest-cov numpy
uv pip freeze > requirements_unix_py315.txt
deactivate
