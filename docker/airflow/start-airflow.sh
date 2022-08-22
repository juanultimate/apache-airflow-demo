cd $AIRFLOW_HOME
airflow initdb
airflow scheduler &
airflow webserver

