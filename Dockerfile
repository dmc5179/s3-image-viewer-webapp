FROM registry.redhat.io/ubi8/nodejs-10:latest

ENV AWS_ACCESS_KEY_ID
ENV AWS_SECRET_ACCESS_KEY
ENV AWS_REGION
ENV AWS_BUCKET


RUN git clone git@github.com:dmc5179/s3-image-viewer-webapp.git \
 && cd s3-image-viewer-webapp \
 && npm install

EXPOSE 3000

ENTRYPOINT ["npm", "start", "--prefix", "/opt/app-root/src/s3-image-viewer-webapp"]
