FROM python:3.11.8-alpine

RUN pip install codecov
RUN pip install pytest
RUN pip install pytest-cov

WORKDIR /app
COPY . /app

RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
