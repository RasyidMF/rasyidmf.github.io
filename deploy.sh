npm run build
cd dist
git init
git add -A
git commit -m "New version of portofolio"
git push -f git@github.com:RasyidMF/rasyidmf.github.io.git master:gh-pages
