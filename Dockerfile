FROM python:3.13.0a5-alpine

RUN pip install codecov
RUN pip install pytest
RUN pip install pytest-cov

WORKDIR /app
COPY . /app

RUN chmod +x /app/entrypoint.sh
ENTRYPOINT ["/app/entrypoint.sh"]
