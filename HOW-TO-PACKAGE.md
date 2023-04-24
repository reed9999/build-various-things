https://www.youtube.com/watch?v=DhUpxWjOhME&list=PLLS5wNI9mI2-aO5VQn3NA21AAPE7d-izV&index=29
https://youtu.be/DhUpxWjOhME?t=608

- separate tests
- now you're depending on proximity to EUT. So make installable package. `src/slapping` (with like of course) and `tests`. 
- Now begin with the config files. pyproject.toml - requires, build-backend. Used to be setup.py was only way to build installable packages.
- setup.py used to be installation script. Can run arbitrary code. Security -> more people putting code elsewhere. 
from setuptools import setup, and then call setup in the __main__.
- now metadata goes to setup.cfg instead of setup.py.
- requirements.txt - make versions more specific if feasible.
- Now we can pip install -e <curdir>