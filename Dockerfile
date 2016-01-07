# Environment integration Java8 + nginx
FROM artifactory.local:5001/nginxjava8
# get the jar
COPY ui/frogsui /usr/share/nginx/html
COPY ws/frogsws.jar /ws

CMD ["java", "-jar", "/ws/frogsws.jar"] 