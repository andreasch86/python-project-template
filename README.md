# Python Project Template
A Dockerised Python project template

# Getting started

To ensure your environment is set up correctly, clone this repository and skip ahead to the next section: 
Running `make` commands

Copy the code form this repo into a local repository (if you choose to use GitHub, first create a new repository),
rename all instances of `python-project-template` and `python_project_template` to your new project name,
pay special attention to underscores (`_`) vs hyphens (`-`) in the naming conventions.

Now, start adding Python code and write unittests for your code from there-on. Unittests can be ran in an IDE like
PyCharm, or using make commands as included in this project.

# Running `make` commands

Ensure your development environment is set up correctly, i.e. you have Python, Docker, Docker Desktop(?), X-Code's CLI
tools (on Mac) installed and then simply run `make help` to get the list of commands included.

When you run `make help` you should see the following list of commands:
```commandline
$ make help

clear-image                    Remove containers used in tests
format-code                    Format your code
notebook-build                 Build notebook image
run-all                        Run all linting and tests for the project
notebook                       Launch a Jupyter Lab instance
test                           Run unit tests for the project
```



