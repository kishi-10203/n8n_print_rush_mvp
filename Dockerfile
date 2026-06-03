FROM n8nio/n8n:1.111.0

USER root

# Install Python + pip
RUN apk add --no-cache python3 py3-pip

# Install Python dependencies globally
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

USER node