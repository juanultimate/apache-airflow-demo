FROM apache/airflow:1.10.15
ENV AIRFLOW_HOME=/opt/airflow
WORKDIR $AIRFLOW_HOME
COPY ./requirements.txt ./
RUN pip install --no-cache-dir --user -r requirements.txt
COPY ./docker/airflow/start-airflow.sh ./
COPY ./dags $AIRFLOW_HOME/dags
EXPOSE 8080
USER airflow
CMD ["bash", "start-airflow.sh"]

