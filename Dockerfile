FROM python:3.4-alpine
RUN mkdir /code
ADD app.py /code
WORKDIR /code
RUN pip install Redis
RUN pip install Flask
EXPOSE 5000
CMD ["python", "app.py"]
