FROM python:3-alpine
 
# Create app directory
WORKDIR /app
 
# Install app dependencies
COPY . .
 
RUN pip install -r src/requirements.txt
WORKDIR /app/src
 
EXPOSE 8888
CMD [ "gunicorn", "--bind", "0.0.0.0:8888", "wsgi:app"]