#!/bin/bash
# Pull the latest commit and copy the site into the moorgateuae.com document root.
# Run from cron:  */5 * * * * /bin/bash $HOME/repositories/moorgate-website/deploy.sh
set -e
REPO="$HOME/repositories/moorgate-website"
DEPLOYPATH="$HOME/moorgateuae.com/"

cd "$REPO"
/usr/bin/git pull -q origin main

/bin/cp -R _astro about blogs careers categories contact cookies faq hr-policy images packages privacy services sustainability terms "$DEPLOYPATH"
/bin/cp .htaccess _headers 404.html index.html robots.txt sitemap.xml site.webmanifest favicon.ico favicon.svg favicon-32.png apple-touch-icon.png icon-192.png icon-512.png "$DEPLOYPATH"
