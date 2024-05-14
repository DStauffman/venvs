# VENVS

This library documents my process for creating virtual environments using `pip`.

## Main environments

There are a number of virtual environments that I create.  The main three are `core_only`, `static` and `everything`, plus one for AI/ML called `aiml`.

The `core_only` environment is meant to be just core python.  This allows me to test code that I want to be able to run on any system, even if all it has is a basic python installation.  However, the environment has slightly more than that.  I install `wheel` into all the environments, as it in theory can help install other things, and then I add `pytest` and `pytest-cov`.  I write all my unit tests using the built-in unittest library, but pytest has much better test runners.  Additional, I want to measure code coverage, so pytest-cov brings in the coverage library for that.

The `static` environment is for all my static code analysis.  This includes black, flake8, isort, mypy and some \*\_Stubs and types\* libraries to add optional typing information.  It also purposely does not include numba or datashader (which depends on numba), as that is a just-in-time compiler than can cause weird caching issues when doing static analysis.

The `everything` environment is where I typically run my code.  It might be misnamed, because it includes everything needed to run, but does not include black or mypy and other static tools, as they are only needed for development and not for runtime.  It also does not currently include any AI/ML libraries, as that is a whole separate can of worms that I now have a different environment for.

Those previous three environments are the ones I actually run out of, but for creating requirements files and tracking usage, I also duplicate them across different python versions.  So I currently have a `core_only311`, `core_only312`, `static311`, `static312`, and everything libraries for all currently supported python versions, `everything39`, `everything310`, `everything311`, `everything312`.

## IDE

All these previous virtual environments are good for command line running, but if you want an IDE, then you can use VSCode, or I prefer to also have Spyder or Jupyter Notebooks.  I create a `spyder` environment that has all of these (`spyder ipykernel jupyterlab notebook`), plus numpy and pandas so that the variable editor within Spyder works better.  Then any environment that you want to run within Spyder needs to have `spyder-kernels` installed, and within Jupyter will need `ipykernel` installed.  Additionally, you'll need to register the environment kernel for use in Jupyter, via `ipykernel kernel install --user --name=everything`

## AI/ML

For doing AI/ML work, I use the `aiml` environment.  It has scikit-learn (sklearn), torch, and tensorflow (CPU-version) installed.

## Poetry

I hate poetry. It's got some nice features, but overall it obscures too much of what is going on behind the scenes, and if you try to do anything off-nominal, then it horribly fails.  However, I occasionally give it a shot.  When I do, I use the `poetry_env` environment to install it into.  (The documentation says this should be okay, but poetry really likes to be installed globally instead, and often tries to uninstall itself from a virtual environment when you are instead trying to setup a different virtual environment, and heaven forbid you want more than one.)

## SBOMs

Finally, there is one more environment, called `hoppr` that I use to produce SBOM reports, and potentially to wrap things up to transfer to an air gapped network if necessary (hoppr/doppr).

Before I create the reports from the requirements.txt files, there is a clean-up command I run using the `requirements_cleanup.py` script.  It turns out that some dependencies, for instance, typing\_extensions from mypy, comes in with an underscore, but for consistency, I replace the underscore with a dash, thus typing-extensions.  This script makes an `_clean.txt` version of all the requirements files.  It also makes a `requirements_all_clean.txt` file with everything together that could be used to say, download all the \*.whl files with a `pip download` command.

Once the requirements files are clean, then run a cyclone\_dx script to generate the SBOM.
