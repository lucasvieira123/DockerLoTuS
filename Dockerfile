FROM ubuntu:latest
EXPOSE 8080
ADD lotus-tool lotus-tool
ADD examples examples
RUN apt-get update \
    && apt-get install --no-install-recommends -y openjfx \
    && apt-get clean \
    && rm -f /var/lib/apt/lists/*_dists_*
CMD  java -jar /lotus-tool/lotus-app-3.0-alpha-SNAPSHOT-jfx.jar 
