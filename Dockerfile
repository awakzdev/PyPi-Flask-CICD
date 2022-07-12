FROM python
WORKDIR ./app
COPY . /app
RUN chmod u+x entrypoint.sh
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
EXPOSE 8777
CMD ["./entrypoint.sh"]
