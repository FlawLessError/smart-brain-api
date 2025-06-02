#NOTE: Install node latest version
FROM node:latest

#NOTE: Set working directory and switches to it
WORKDIR /usr/src/smart-brain-container

# NOTE: Copies local files to the docker file inside of 
# the working dir
COPY ./ ./

RUN npm i

# NOTE: Runs a shell and -it (interactive terminal)
# attaches it self to the bash
CMD ["/bin/bash"]
