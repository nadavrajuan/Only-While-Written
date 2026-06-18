# Only While Written

An ephemeral text art piece that exists only while being read.

## Deployment

This app is deployed to AWS EC2 via GitHub Actions and served at:
https://only-while-written.rajuan.app

### Setup

The deployment uses:
- Docker + Nginx for serving
- Traefik for SSL and routing
- GitHub Actions for CI/CD
- Cloudflare DNS

### Local Development

```bash
# Run with Docker
docker-compose up

# Or open index.html directly in a browser
```

## Architecture

- Single static HTML file with embedded JavaScript
- No external dependencies
- Self-contained ephemeral text experience
