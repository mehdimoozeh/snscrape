# Base image with Python 3 and Alpine Linux
FROM python:alpine

# Install dependencies
RUN apk add --no-cache git
RUN pip install --upgrade pip

# Set the working directory to /app
RUN git clone https://github.com/mehdimoozeh/snscrape
WORKDIR /snscrape

# Install snscrape
RUN pip install .

# Set the entrypoint to run the snscrape command
ENTRYPOINT ["snscrape"]

# Set the default command to show the help menu
CMD ["--help"]
