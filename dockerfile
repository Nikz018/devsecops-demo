FROM python:3.11-slim
RUN useradd -m appuser
WORKDIR /app
COPY app.py .
RUN pip install flask gunicorn
USER appuser
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
