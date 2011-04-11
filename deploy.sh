rm -rf output
git checkout source
nanoc3 co
rm -rf .sass-cache
git checkout master
rm -rf output
cp -R output/* .
git add .
git commit -a -m "Updated site on `date`"
git push origin master
git checkout source