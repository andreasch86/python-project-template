import os

from setuptools import setup

_DIR = os.path.abspath(os.path.dirname(__file__))

with open(os.path.join(_DIR, "requirements.txt"), "r") as f_requirements:
    ALL_REQUIRES = f_requirements.read().splitlines()

# A hack of note, but seems like setup.py cannot be installed without it

setup(
    name="python_project_template",
    include_package_data=True,
    install_requires=ALL_REQUIRES,
    description="A Dockerised Python project template",
    author="SUN-CBCB",
    use_scm_version=True,
    setup_requires=["setuptools_scm"],
)
