# Environment integration Java8 + nginx
FROM artifactory.local:5001/nginxjava8
# get the jar
COPY package /usr/share/nginx/html/frogsui/
COPY ws/frogsws.jar /ws

CMD ["java", "-jar", "/ws/frogsws.jar"] 