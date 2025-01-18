FROM python:3.14.0a4

WORKDIR /app/service
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY ./karton ./karton
COPY ./setup.py ./setup.py
RUN pip install .
ENTRYPOINT ["karton-system"]
