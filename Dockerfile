FROM tiangolo/uvicorn-gunicorn:python3.8

WORKDIR /app

COPY requirements.txt /tmp/

RUN pip install -r /tmp/requirements.txt

COPY app/ /app/

CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "8000"]