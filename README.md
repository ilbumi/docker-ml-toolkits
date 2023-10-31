# docker-ml-toolkits
A set of ML toolkit docker images

You can pull the images from [DockerHub](https://hub.docker.com/repository/docker/ilbumi/python-toolkit)

# Kits
## base-pytorch
An image with basic packages

### Package List

#### Machine Learning

- Pytorch 2.0.1 CUDA 11.7
- Pytorch Lightning
- scikit-learn
- pandas
- numpy
- scipy

#### Visualization

- Seaborn
- Matplotlib

#### Data Storage

- Boto3
- SQLAlchemy
- psycopg2
- pymongo

## jup-pytorch
An image with jupyter installed

### Package List

The same, as in base and Dev packages

#### Dev 
- pytest
- pytest-cov
- flake8
- black 
- isort
- mypy
- ruff

## full-pytorch
An image with all the necessary packages

## dev-pytorch
An image for Dockerized VS Code development
