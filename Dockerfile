FROM tiangolo/uvicorn-gunicorn:python3.8

WORKDIR /app

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

COPY ./app /app

#CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80"]