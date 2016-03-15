# Environment integration Java8 + nginx
FROM gcartifactory-us.jfrog.info:5007/nginxjava8
# get the jar
COPY frogsui /usr/share/nginx/html/frogsui/
RUN sed -i "s+localhost:9000+/ws/+g" frogs-integration/frogsui/app/app.js
COPY frogsws.jar /ws/frogsws.jar
COPY wrapper.sh /wrapper.sh
COPY ws.conf /etc/nginx/conf.d/ws.conf

EXPOSE 80 9000

CMD ["/wrapper.sh"]