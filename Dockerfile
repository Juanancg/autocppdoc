# Use a Python base image
FROM python:3.9

# Install required Python packages
RUN pip3 install robotpy-cppheaderparser hpp2plantuml

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the entrypoint script and the template into the container
COPY entrypoint.sh /usr/src/app/entrypoint.sh
COPY template.puml /usr/src/app/template.puml

# Grant execute permissions to the entrypoint script
RUN chmod +x /usr/src/app/entrypoint.sh

# Set entrypoint script as the entry point for the container
ENTRYPOINT ["/usr/src/app/entrypoint.sh"]
