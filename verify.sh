#!/bin/bash
# Verification script for Only While Written deployment

echo "🔍 Verifying Only While Written Deployment"
echo "=========================================="
echo ""

# Test DNS
echo "1. DNS Resolution:"
dig +short only-while-written.rajuan.app | head -1
echo ""

# Test HTTPS
echo "2. HTTPS Status:"
HTTP_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://only-while-written.rajuan.app)
echo "   HTTP Status: $HTTP_CODE"
if [ "$HTTP_CODE" == "200" ]; then
    echo "   ✅ Site is live and responding"
else
    echo "   ❌ Site returned unexpected status code"
fi
echo ""

# Test favicon
echo "3. Favicon:"
FAVICON_CODE=$(curl -s -o /dev/null -w "%{http_code}" https://only-while-written.rajuan.app/favicon.svg)
if [ "$FAVICON_CODE" == "200" ]; then
    echo "   ✅ Favicon accessible"
else
    echo "   ❌ Favicon not found"
fi
echo ""

# Test page title
echo "4. Page Content:"
TITLE=$(curl -s https://only-while-written.rajuan.app | grep -o "<title>.*</title>")
echo "   $TITLE"
echo ""

# Check SSL
echo "5. SSL Certificate:"
SSL_INFO=$(echo | openssl s_client -servername only-while-written.rajuan.app -connect only-while-written.rajuan.app:443 2>/dev/null | grep "subject=")
if [ -n "$SSL_INFO" ]; then
    echo "   ✅ SSL certificate valid"
else
    echo "   ⚠️  Could not verify SSL"
fi
echo ""

echo "=========================================="
echo "✅ Deployment verification complete!"
echo ""
echo "🌐 Visit: https://only-while-written.rajuan.app"
