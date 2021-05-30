FROM jupyter/datascience-notebook
USER root

RUN pip3 install --upgrade --no-cache-dir \
  tensorflow \
  jupyterlab-lsp \
  'python-language-server[all]' \
  jupyterlab_code_formatter \
  && rm -rf ~/.cache/pip \
  && jupyter labextension install \
  @ryantam626/jupyterlab_code_formatter \
  @krassowski/jupyterlab-lsp \
  && jupyter serverextension enable --py jupyterlab_code_formatter

