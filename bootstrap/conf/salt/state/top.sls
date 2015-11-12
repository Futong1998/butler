base:
  '*':
    - consul
    - dnsmasq
    - collectd
  'G@roles:consul-bootstrap':
    - consul.bootstrap
  'G@roles:consul-server':
    - consul.server
  'G@roles:consul-client':
    - consul.client
  'G@roles:monitoring-server':
    - influxdb
    - grafana 
  'G@roles:genotyper':
    - dnsmasq.gnos
    - biotools.freebayes
    - biotools.htslib
    - biotools.samtools
    - airflow
  'G@roles:tracker':
    - postgres
    - run-tracking-db
    - rabbitmq
    - celery
    - airflow
    - airflow.load-workflows
    - airflow.server


    