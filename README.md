# ins-model-backend
This repo for insurance model backend for prediction service

## SSH connecion for ec2
```sh
chmod 400 .ssh/**.pem
ssh -i .ssh/**.pem ubuntu@ipaddress
```

## Create a new enviroment for model serving

```py
python3 -m venv python-env

source python-env/bin/activate

pip install -r requirements.txt
```

## Train model and register with MLFlow: example
```py
cd modelTraining/
python insuranceModelXgboost.py

```