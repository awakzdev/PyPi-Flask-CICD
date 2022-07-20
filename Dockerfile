FROM python
WORKDIR ./app
COPY . /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install ganesha_experimental==5.0.0 --index-url "${{ secrets.JFROG_URL }}"
CMD ["python", "./simpleflask.py"]
