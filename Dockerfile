FROM alpine:3.12

# Install Hugo
RUN apk add --update hugo

# Create the working directory
RUN mkdir /app
WORKDIR /app

# Copy the source code
COPY . /app

# Build the website
RUN hugo

# Serve the website
FROM nginx:alpine
COPY --from=0 /app/public /usr/share/nginx/html



