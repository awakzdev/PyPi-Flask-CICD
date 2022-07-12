FROM python
WORKDIR ./app
COPY . /app
RUN chmod +x entrypoint.sh
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
EXPOSE 8777
CMD ["./entrypoint.sh", "python", "simpleflask.py"]
RUN pip install -r requirements.txt
