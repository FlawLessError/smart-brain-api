FROM node:24

WORKDIR usr/src/smart-brain-api

COPY ./ ./

RUN npm install

CMD ["/bin/bash"]
