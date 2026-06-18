# Deployment Instructions

## ✅ Completed Steps

1. **Git Repository**: Created and pushed to https://github.com/nadavrajuan/Only-While-Written
2. **Docker Setup**: Dockerfile and docker-compose.yml configured with Traefik labels
3. **Cloudflare DNS**: A record created for `only-while-written.rajuan.app` → `3.122.189.17`
4. **GitHub Actions CI/CD**: Workflow configured in `.github/workflows/deploy.yml`
5. **Favicon**: SVG emoji favicon (✍️) added
6. **Security**: No passwords, API keys, or secrets in the repository

## 🔧 Manual Steps Required

### 1. Add SSH Key to GitHub Secrets

You need to add your EC2 SSH private key as a GitHub secret:

```bash
# If you don't have the key locally, you can generate a new one on the EC2 server
# and add your public key to ~/.ssh/authorized_keys

# Add the secret to GitHub:
gh secret set EC2_SSH_KEY < ~/.ssh/your-ec2-key.pem
```

Or via GitHub web interface:
1. Go to: https://github.com/nadavrajuan/Only-While-Written/settings/secrets/actions
2. Click "New repository secret"
3. Name: `EC2_SSH_KEY`
4. Value: Paste your EC2 private key

### 2. Verify Traefik Network Exists on EC2

SSH into your EC2 server and ensure the Traefik network exists:

```bash
ssh ubuntu@3.122.189.17
docker network ls | grep traefik || docker network create traefik
```

### 3. Initial Deployment

Once the SSH key is added, you can either:

**Option A: Push to trigger GitHub Actions**
```bash
# Make any small change and push
git commit --allow-empty -m "Trigger deployment"
git push
```

**Option B: Manual deployment**
```bash
# SSH to server
ssh ubuntu@3.122.189.17

# Clone and deploy
git clone https://github.com/nadavrajuan/Only-While-Written.git
cd Only-While-Written
docker-compose up -d
```

## 🌐 Access

Once deployed, the app will be available at:
**https://only-while-written.rajuan.app**

(SSL certificate will be automatically provisioned by Traefik + Let's Encrypt)

## 📝 Notes

- The app is a single static HTML file with no backend or database
- No authentication needed for this public art piece
- Future updates will auto-deploy on push to master branch via GitHub Actions
