FROM python:3.13.1-slim AS builder

ENV NOTEBOOK_USER=notebook-user
WORKDIR /app

RUN pip install notebook

COPY plugins.txt requirements.txt

RUN pip install -r requirements.txt

RUN python -m iarm_kernel.install

RUN mkdir /app/notebooks

RUN addgroup --gid 1001 --system $NOTEBOOK_USER && \
    adduser --uid 1001 --gid 1001 --home /app/ --disabled-password $NOTEBOOK_USER && \
    chown $NOTEBOOK_USER:$NOTEBOOK_USER /app && \
    chown $NOTEBOOK_USER:$NOTEBOOK_USER /app/notebooks

USER $NOTEBOOK_USER

WORKDIR /app/notebooks

ENTRYPOINT ["jupyter", "notebook", "--ip", "0.0.0.0", "--no-browser"]

