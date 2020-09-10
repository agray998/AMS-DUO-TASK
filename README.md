# Duo Task

This is a basic Flask application that serves a simple static website that returns the machine's hostname.

It is directly accessible on port `5000`.

The `nginx.conf` file can be used to configure an NGINX container to run as a reverse proxy to the Flask app container, effectively making the Flask application accessible on port `80`. You will need to know how to configure networks in Docker in order to achieve this.
