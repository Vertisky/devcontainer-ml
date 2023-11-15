ARG BASE_VERSION=v1.2.1
ARG PYTHON_VERSION=3.9

FROM etma/devcontainer-python:${PYTHON_VERSION}-debian
ARG VERSION
ARG COMMIT
ARG BUILD_DATE
ARG BASE_VERSION
ARG PYTHON_VERSION

LABEL \
    org.opencontainers.image.title="DevContainer for PYTHON" \
    org.opencontainers.image.description="Debian PYTHON image for dev containers." \
    org.opencontainers.image.url="https://github.com/vertisky/devcontainers-python" \
    org.opencontainers.image.documentation="https://github.com/vertisky/devcontainers-python" \
    org.opencontainers.image.source="https://github.com/vertisky/devcontainers-python" \
    org.opencontainers.image.vendor="vertisky" \
    org.opencontainers.image.authors="etma@vertisky.com" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.version=$VERSION \
    org.opencontainers.image.revision=$COMMIT \
    org.opencontainers.image.created=$BUILD_DATE

# Install Python packages

RUN conda install pandas \
    scikit-learn \
    matplotlib \
    seaborn \
    xgboost \
    lightgbm \
    jupyterlab \
    tensorflow \
    keras \
    pytorch \
    && conda clean --all --yes
