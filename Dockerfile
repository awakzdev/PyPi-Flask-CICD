FROM python
WORKDIR ./app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install ganesha_experimental==5.0.0 --find-links=https://awakzdev.jfrog.io/artifactory/
CMD ["python", "./simpleflask.py"]
