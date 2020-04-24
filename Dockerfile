# Using lightweight alpine
imageFROM python:3.7.7-alpine3.10
# Defining working directory and copy the requirementsfile
WORKDIR /usr/src/myappCOPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python3","app.py"]