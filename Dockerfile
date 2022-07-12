FROM python
WORKDIR ./app
COPY . /app
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8777
CMD ["python", "simpleflask.py"]
