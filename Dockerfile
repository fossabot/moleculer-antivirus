FROM node:6-alpine

# Install git for jest watcher and clamav for virus scanning
RUN apk add --update --no-cache git clamav

# Copy over all Source files
COPY . /usr/src

# Change the working directory to the source files
WORKDIR /usr/src

# Set the entrypoint to yarn script runner
ENTRYPOINT ["yarn","run"]

# Execute the ci task by default
CMD ["ci"]

