FROM n8nio/n8n:1.111.0

USER root

# Install Python
RUN apk add --no-cache python3 py3-pip

# Prevent PEP restrictions
RUN python3 -m venv /opt/venv

ENV PATH="/opt/venv/bin:$PATH"

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

USER node