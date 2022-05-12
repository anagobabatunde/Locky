# first stage
FROM python:3.8 AS builder
# COPY requirements.txt .

# install dependencies to the local user directory (eg. /root/.local)
# RUN pip install --user -r requirements.txt

# second unnamed stage
FROM python:3.8-slim
WORKDIR /code

COPY ./src .

# update PATH environment variable
ENV PATH=/root/.local:$PATH

CMD [ "python", "./my_script.py" ]