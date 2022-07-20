FROM python
WORKDIR ./app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r pre-requirements.txt
CMD ["python", "./simpleflask.py"]
