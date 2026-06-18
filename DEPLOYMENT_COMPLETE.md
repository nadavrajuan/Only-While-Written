# ✅ Deployment Complete

## Live Site
**https://only-while-written.rajuan.app**

## What Was Set Up

### 1. ✅ Git Repository
- Repository: https://github.com/nadavrajuan/Only-While-Written
- All code committed under your name (Nadav Rajuan)
- No sensitive data in repository

### 2. ✅ Docker Setup
- Dockerfile with Nginx Alpine base image
- docker-compose.yml with Traefik integration
- Connected to existing `traefik-public` network
- Container running and serving on port 80

### 3. ✅ Cloudflare DNS
- DNS A record created: `only-while-written.rajuan.app` → `3.122.189.17`
- TTL: Auto
- Proxied: No (direct to origin)

### 4. ✅ SSL/HTTPS
- Automatically provisioned by Traefik + Let's Encrypt
- Site accessible via HTTPS
- Certificate valid and working

### 5. ✅ CI/CD Pipeline
- GitHub Actions workflow configured
- Triggers on push to master branch
- SSH key stored in GitHub Secrets
- Auto-deploys to EC2 server
- Uses Docker Compose v2

### 6. ✅ Favicon
- SVG emoji favicon (✍️ writing hand)
- Matches the ephemeral writing theme
- Accessible at /favicon.svg

### 7. ✅ Security
- No passwords in code
- No API keys committed
- No sensitive data exposed
- Single static HTML file (no auth needed for this public art piece)

## Server Details
- EC2 Instance: i-05d0e4eb9be5b591a
- Instance Type: t3.small
- Region: eu-central-1
- IP: 3.122.189.17
- Container: `only-while-written` (running)
- Traefik: Handling SSL and routing

## Testing the Deployment

```bash
# Check HTTP status
curl -I https://only-while-written.rajuan.app

# View the page
open https://only-while-written.rajuan.app
```

## Future Updates

To deploy updates:
```bash
git add .
git commit -m "Your update message"
git push
```

GitHub Actions will automatically:
1. SSH into the EC2 server
2. Pull the latest code
3. Rebuild the Docker image
4. Restart the container

## Project Structure

```
Only-While-Written/
├── index.html              # Main app (ephemeral text art)
├── favicon.svg             # Emoji favicon
├── Dockerfile              # Docker build config
├── docker-compose.yml      # Container orchestration
├── .github/
│   └── workflows/
│       └── deploy.yml      # CI/CD pipeline
├── .dockerignore           # Docker build exclusions
├── .gitignore              # Git exclusions
└── README.md               # Project documentation
```

## Notes

- The app is intentionally simple - a single HTML file with embedded JavaScript
- No backend or database required
- No authentication needed (public art installation)
- The text "decays" as you read, creating an ephemeral experience
- Perfect example of minimalist web art
