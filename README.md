# Pharos Control Docker image

![Latest Version](https://img.shields.io/github/v/release/JMacalinao/pharos-control-docker?include_prereleases&style=for-the-badge) ![Docker Build Status](https://img.shields.io/github/workflow/status/JMacalinao/pharos-control-docker/Docker?style=for-the-badge)

From TP-Link's website:

> TP-Link’s free Pharos Control Software allows users to easily manage unlimited Pharos products for complete, unhindered network scalability. Batch management helps simultaneously configure and manage multiple devices, giving administrators an efficient, cost-effective and centralized management platform for an optimized network.

This Docker image currently uses the latest Linux version of the software (v2.0.2).

## Usage

### Using Docker Compose (recommended)

Install Docker and Docker Compose, and then:

    git clone https://github.com/JMacalinao/pharos-control-docker.git
    cd pharos-control-docker
    sudo docker-compose up -d

You can access it from <http://localhost:9321>.

### Using the Dockerfile

    docker build -t pharos-control .
    docker run --restart=always pharos-control

### Logging in

Default login credentials is `admin:admin`. Change it immediately!

## To-dos/Wishlist

* Sync image tags with app version
* Helm chart (Note to self: Stop being lazy so you can deploy this one with a chart instead of doing it manually!)

## License

I'm kinda lazy to get into jargon, but basically, everything is provided as-is, and I am not liable if using this code bricks your device, causes a nuclear holocaust, or anything in between. The nearest one from that is MIT, so there ya go.