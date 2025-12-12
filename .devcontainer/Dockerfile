FROM mcr.microsoft.com/devcontainers/python:1-3.12-bookworm

ENV PYTHONUNBUFFERED 1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    libxml2-dev \
    libxslt1-dev \
    libjpeg-dev \
    libpng-dev \
    libldap2-dev \
    libsasl2-dev \
    node-less \
    npm \
    git \
    sudo \
    wget \
    wkhtmltopdf

# Install wkhtmltopdf for PDF reports
# RUN wget https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.bionic_amd64.deb \
#     && dpkg -i wkhtmltox_0.12.6-1.bionic_amd64.deb \
#     && apt-get -f install -y

# Set up Odoo user
RUN adduser --system --no-create-home --gecos "" --group odoo
RUN mkdir -p /usr/lib/python3/dist-packages/odoo \
    && chown odoo:odoo /usr/lib/python3/dist-packages/odoo

# Switch to the odoo user
USER odoo

# Expose Odoo ports
EXPOSE 8069 8071

# Set the entrypoint to run Odoo
CMD ["/usr/bin/python3", "/usr/lib/python3/dist-packages/odoo/odoo-bin", "-c", "/etc/odoo/odoo.conf"]