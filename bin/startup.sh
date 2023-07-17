#!/bin/bash
pip install -e /python-project-template
jupyter lab --ip=0.0.0.0 --port=5124 --allow-root --NotebookApp.token='' --NotebookApp.password=''
