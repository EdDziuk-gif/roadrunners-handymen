# Roadrunners Handymen — Deployment Steps

Target: **roadrunners.frontframe.co** → Cloudflare Pages

---

## Step 1 — Initialize local git repo (Terminal)

```bash
cd ~/Development_Assets/FrontFrame_Website_CoWork/roadrunners
bash deploy-setup.sh
```

---

## Step 2 — Create GitHub repo

1. Go to **github.com/new**
2. **Repository name:** `roadrunners-handymen`
3. **Owner:** EdDziuk-gif
4. Visibility: **Private**
5. ❌ Do NOT initialize with README (repo already has files)
6. Click **Create repository**

Then back in Terminal:
```bash
cd ~/Development_Assets/FrontFrame_Website_CoWork/roadrunners
git remote add origin https://github.com/EdDziuk-gif/roadrunners-handymen.git
git push -u origin main
```

---

## Step 3 — Cloudflare Pages project

1. Go to **dash.cloudflare.com** → **Workers & Pages** → **Create** → **Pages**
2. Click **Connect to Git**
3. Select **EdDziuk-gif/roadrunners-handymen**
4. Build settings:
   - **Framework preset:** None
   - **Build command:** *(leave blank)*
   - **Build output directory:** `/` (just a slash, or leave blank)
5. Click **Save and Deploy**

Wait ~30 seconds for the first deploy. You'll get a URL like `roadrunners-handymen.pages.dev`.

---

## Step 4 — Add custom domain

1. In the Cloudflare Pages project → **Custom domains** tab
2. Click **Set up a custom domain**
3. Enter: `roadrunners.frontframe.co`
4. Cloudflare will auto-add the DNS record since frontframe.co is already on Cloudflare
5. Click **Activate domain**

DNS propagates in under a minute (same-account Cloudflare zones are instant).

---

## Future deploys

Every time you push to GitHub main branch, Cloudflare Pages rebuilds automatically:

```bash
cd ~/Development_Assets/FrontFrame_Website_CoWork/roadrunners
git add -A
git commit -m "describe your change"
git push
```

---

## Site structure

```
roadrunners/
├── index.html          ← public site (roadrunners.frontframe.co)
└── admin/
    └── index.html      ← admin portal (roadrunners.frontframe.co/admin/)
```
