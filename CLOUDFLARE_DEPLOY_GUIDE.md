# Cloudflare Pages Deployment Guide

## Quick Setup Steps

### 1. Sign Up / Log In
- Go to: https://pages.cloudflare.com/
- Sign up with email or log in

### 2. Connect GitHub
1. Click "Create a project"
2. Click "Connect to Git" → "Connect GitHub"
3. Authorize Cloudflare

### 3. Select Repository
1. Find your "portfolio" repository
2. Click "Begin setup"

### 4. Build Configuration

**IMPORTANT SETTINGS:**

```
Project name:          shohrabrustam-portfolio
Production branch:     gh-pages
Framework preset:      None
Build command:         (leave empty)
Build output directory: /
Root directory:        (leave empty)
Environment variables: (none needed)
```

### 5. Deploy
- Click "Save and Deploy"
- Wait 1-2 minutes
- Your URL: `https://[project-name].pages.dev`

---

## Why Choose Cloudflare Pages?

✅ **Global CDN:** 200+ data centers worldwide  
✅ **Unlimited Bandwidth:** No traffic limits  
✅ **Auto-Deploy:** Deploys on every GitHub push  
✅ **Free SSL:** HTTPS enabled automatically  
✅ **DDoS Protection:** Enterprise-grade security  
✅ **Fast Builds:** 1-2 minute deployment time  
✅ **Free Tier:** 500 builds/month included  

---

## After Deployment

### Your URLs Will Be:
- Primary: `https://[project-name].pages.dev`
- Preview: Auto-generated for each branch/PR

### Custom Domain (Optional)
You can add a custom domain like `shohrabrustam.com`:
1. Go to your project → Custom domains
2. Add your domain
3. Update DNS records (Cloudflare provides them)
4. Done!

---

## Auto-Deploy Feature

Once connected, Cloudflare automatically deploys when you:
- Push to your `gh-pages` branch
- Create a pull request (preview deployment)
- Merge changes

**No manual deployment needed!**

---

## Troubleshooting

### Build Failed?
- Make sure branch is `gh-pages`
- Leave build command empty (it's a static site)
- Set build output to `/`

### 404 Error?
- Check if files are in root directory
- Verify `index.html` exists in repository
- Check branch name in settings

### Need Help?
Cloudflare has excellent docs: https://developers.cloudflare.com/pages/

---

## Performance Comparison

| Metric | GitHub Pages | Cloudflare Pages |
|--------|--------------|------------------|
| Global CDN | ✅ | ✅ (200+ locations) |
| Build Time | 2-5 min | 1-2 min |
| Bandwidth | Unlimited | Unlimited |
| SSL | Free | Free |
| DDoS Protection | Basic | Enterprise |

---

## Next Steps

After deploying to Cloudflare:
1. Test your URL
2. Share your new URL
3. (Optional) Deploy to Vercel/Netlify for even more redundancy

Your portfolio will now have multiple live URLs:
- `https://shohrabrustam.github.io/`
- `https://[project-name].pages.dev`

🎉 **Maximum availability and performance!**
