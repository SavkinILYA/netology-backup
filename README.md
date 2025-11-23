# Домашнее задание к занятию «ELK»

## Задание 1. Elasticsearch

![Задание 1](img/task1-cluster-health.png)

## Задание 2. Kibana (Dev Tools)

![Задание 2](img/task2-kibana-console.png)

## Задание 3. Logstash → логи Nginx в Elasticsearch

![Задание 3](img/task3-logstash-logs.png)

## Задание 4. Filebeat → логи Nginx в Elasticsearch

![Задание 4](img/task4-filebeat-logs.png)

Всё поднято через docker-compose на Ubuntu 24.04  
cluster_name `savkin`  
Логи Nginx успешно отправлены через Logstash и через Filebeat в разные индексы  
В Kibana созданы соответствующие index patterns и видны логи из обоих источников
