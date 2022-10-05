# to create c file from pyx - use command below
# python setup.py build_ext --inplace

from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize("sorting.pyx")
)