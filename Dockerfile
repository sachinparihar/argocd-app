FROM alpine:3.12

# Install Hugo
RUN apk add --update hugo

# Copy the website source code
COPY . /src
WORKDIR /src

# Build the website
RUN hugo

# Expose port 80
EXPOSE 8000



