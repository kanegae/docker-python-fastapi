FROM python:latest
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 8000
CMD uvicorn api:app --host=0.0.0.0 --port=8000 --reload