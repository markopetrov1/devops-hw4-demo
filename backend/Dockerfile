FROM python:3.10

ENV PYTHONUNBUFFERED 1
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
    binutils libproj-dev gdal-bin uwsgi gettext \
     libgettextpo-dev build-essential zlib1g-dev \
     libncurses5-dev libgdbm-dev libnss3-dev libssl-dev \ 
     libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev \ 
     libpq-dev libjpeg-dev zlib1g-dev

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install --upgrade importlib-metadata

CMD ["/bin/bash"]
