# Environment integration Java8 + nginx
FROM gcartifactory-us.jfrog.info:5007/nginxjava8
# get the jar
COPY frogsui /usr/share/nginx/html/frogsui/
COPY frogsws.jar /ws/frogsws.jar
COPY wrapper.sh /wrapper.sh

EXPOSE 80 9000

CMD ["/wrapper.sh"]