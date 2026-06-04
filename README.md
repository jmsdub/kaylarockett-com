# kaylarockett.com

Static portfolio site for Kayla Rockett. No build step. This folder IS the deploy repo.

## Push to GitHub + connect Netlify (one-time)
    cd /Users/jamesduband/Desktop/Claude/CF Clients/KaylaRockett.com/site
    git remote add origin git@github.com:YOURUSER/kaylarockett-com.git
    git push -u origin main

Then in Netlify: Add new site -> Import an existing project -> pick the repo.
Build command: (blank). Publish directory: . (root). Attach kaylarockett.com.

## Updating
Edit files here, then:
    git add -A && git commit -m "update" && git push
Netlify auto-deploys; `_headers` makes a plain refresh show the latest.
