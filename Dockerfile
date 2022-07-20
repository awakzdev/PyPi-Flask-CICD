FROM python
WORKDIR ./app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r pre-requirements.txt
RUN echo ${{ secrets.PIP }} > etc/pip.conf
RUN pip install -r post-requirements.txt
CMD ["python", "./simpleflask.py"]
