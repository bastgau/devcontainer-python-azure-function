# See here for image contents:
FROM mcr.microsoft.com/azure-functions/python:4-python3.9-core-tools

WORKDIR /workspaces/app

ARG WORKSPACE_FOLDER="/workspaces/app"

VOLUME $WORKSPACE_FOLDER/.venv
VOLUME $WORKSPACE_FOLDER/.init

COPY /requirements-dev.txt $WORKSPACE_FOLDER/.init/requirements-dev.txt
COPY /requirements.txt $WORKSPACE_FOLDER/.init/requirements-all.txt

# COPY /.devcontainer/install.sh /workspaces/tools/install.sh
# RUN chmod +x /workspaces/tools/install.sh
# RUN /tmp/install.sh

ENV VIRTUAL_ENV=$WORKSPACE_FOLDER/.venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
RUN pip install --upgrade pip
RUN pip install -r $WORKSPACE_FOLDER/.init/requirements-dev.txt
RUN pip install -r $WORKSPACE_FOLDER/.init/requirements-all.txt
