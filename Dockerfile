ARG CODE_VERSION=2026-07-28
FROM quay.io/jupyter/scipy-notebook:${CODE_VERSION} AS jupyter
LABEL org.opencontainers.image.authors="markoni48@yandex.ru"
LABEL description="Container to run Jupyter Electronics notebooks"

# Copy environment.yml to a temp location so we update the environment.
COPY --chmod=666 .devcontainer/environment.yml .devcontainer/parse_deps.py /tmp
WORKDIR /tmp
RUN python parse_deps.py
RUN pip install --no-cache-dir -r ./requirements.txt
WORKDIR /home/jovyan

# [Optional] Uncomment this section to install additional OS packages.
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends <your-package-list-here>