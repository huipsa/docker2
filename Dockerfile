FROM python:3.11-alpine
WORKDIR /usr/crud
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .
ENV PYTHONUNBUFFERED=1
EXPOSE 8000

COPY entrypoint.sh /usr/crud/entrypoint.sh
RUN chmod +x /usr/crud/entrypoint.sh

ENTRYPOINT ["/usr/crud/entrypoint.sh"]
