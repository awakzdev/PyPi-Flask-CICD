FROM python
WORKDIR ./app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r pre-requirements.txt
COPY ${{ secrets.PIP }} /etc/pip.conf
RUN pip install -r post-requirements.txt
EXPOSE 8777
CMD ["python", "./simpleflask.py"]
