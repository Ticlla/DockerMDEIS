FROM centos:7

RUN yum -y update
RUN yum install -y git
RUN yum install -y which

RUN curl –sL https://rpm.nodesource.com/setup_14.x |  bash -
RUN yum install -y nodejs

RUN mkdir /work
WORKDIR /work
COPY . .
RUN npm install --production
CMD [ "node", "app.js" ]

# RUN nvm --version
# RUN nvm install node