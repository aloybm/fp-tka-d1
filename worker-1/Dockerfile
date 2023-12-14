FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install -r requirement.txt
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8000", "app:app"]