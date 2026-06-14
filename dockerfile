FROM python:3.9-slim
WORKDIR /app
# copies the contnet of other files like app.py to docker image
COPY . /app 
RUN pip install --no-cache-dir -r requirements.txt
ExPOSE 5000
ENV FLASK_APP=app.py
CMD ["flask", "run", "--host=0.0.0.0"]