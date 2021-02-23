# Topological Defects

An introductory *Living Book* on topics in astrophysical topology, with focus on Cosmic Strings and recent research.

## Building
To build, clone the repository and install the requirements
```bash
pip install -r requirements.txt
```

Then use [Jupyter Book](https://jupyterbook.org/) to compile the book:
```bash
jupyter-book build src
```

The book is created in `src/_build/`.

Note, cell execution is disabled, since this book contains a myriad of programming languages. It is encouraged that the reader recreate the environments as instructed in the appendix, and execute the relevant `.ipynb` within them.