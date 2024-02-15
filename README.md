# docker-ml-toolkits

A set of ML toolkit docker images

You can pull the images from [DockerHub](https://hub.docker.com/repository/docker/ilbumi/python-toolkit)

## Kits

### Base Dev Image (devbase)

#### Non-python Tools

- Git
- CURL
- ping
- build-essential

#### Python Tools

The image is based on Python 3.11

##### Data Handling

- Pandas
- PyArrow
- Openpyxl
- SQLAlchemy
- psycopg2-bin
- boto3
- pymongo

##### Calculation

- NumPy
- SciPy
- SimPy

##### Visualization

- matplotlib
- Seaborn
- Altair

##### ML

- scikit-learn
- xgboost
- catboost
- imbalanced-learn

##### Dev and Configuration

- wandb
- pydantic
- hydra-core
- ruff
- mypy
- bandit
- pytest

### PyTorch Dev Image (devtorch)

All the tools from the [Base Dev Image](#base-dev-image-devbase) are included. Other included packages are listed below.

#### Python Tools

##### Data Handling

- datasets
- tokenizers

##### ML

- PyTorch
- Transformers
- Timm
- PyTorch Lightning

### DL in Biology (devdeepbio)

All the tools from the [PyTorch Dev Image](#pytorch-dev-image-devtorch) are included. Other included packages are listed below.

#### Non-python Tools

- mafft
- ncbi-entrez-direct
- ncbi-blast+
- RAxML-NG

#### Python Tools

##### Biology Toolkit

- Biopython
- ProDy
- Scikit-Bio

### DL in Biology, Jupyter version (jupdeepbio)

All the tools from the [DL in Biology](#dl-in-biology-devdeepbio) are included. Other included packages are listed below.

#### Python Tools

##### Jupyter

- Jupyter Lab 
- ipywidgets
- tqdm
- jupyterlab-code-formatter

### DL in Biology, Jupyter version, with graphs (jupdeepbiofull)

All the tools from the [DL in Biology, Jupyter version](#dl-in-biology-jupyter-version-jupdeepbio) are included. Other included packages are listed below.

#### Python Tools

- PyTorch Geometric
- igraph
