FROM python:3.11

WORKDIR /app

COPY . /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

ENTRYPOINT [ "python3" ]

CMD ["manage.py", "runserver", "0.0.0.0:8000"]