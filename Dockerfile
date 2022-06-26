FROM python:3.8-alpine 
RUN mkdir /api_app
WORKDIR /api_app
COPY requirements.txt requirements.txt
RUN pip -r install requirements.txt
COPY . .
ENV APP_COLOR = APP_COLOR 
EXPOSE 7000
CMD ["python","Demo.py"]