FROM jupyter/tensorflow-notebook

# XGBoost
RUN conda install py-xgboost

# Hyperopt
RUN conda install -c jaikumarm hyperopt