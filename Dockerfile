FROM python
WORKDIR ./app
COPY . /app
RUN pip install -r pre-requirements.txt
RUN chmod u+x entrypoint.sh && ./entrypoint.sh
RUN pip install --upgrade pip
RUN pip install -r post-requirements.txt
EXPOSE 8777
CMD ["python", "./simpleflask.py"]
