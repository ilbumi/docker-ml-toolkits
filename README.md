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
