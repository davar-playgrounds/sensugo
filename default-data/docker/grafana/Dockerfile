#FROM grafana/grafana:6.5.3-ubuntu
FROM grafana/grafana:6.5.3

RUN grafana-cli --pluginUrl https://github.com/sensu/grafana-sensu-go-datasource/releases/download/1.0.2/sensu-sensugo-datasource-1.0.2.zip plugins install sensu-sensugo-datasource

CMD [ 'grafana-server' ]
