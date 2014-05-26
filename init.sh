#!/bin/sh
echo "-----------------------"
echo "Welcome to phanes v.0.1"
echo "-----------------------"
echo
default="phanesApp";
echo "[WARNING: this can only be done once, so choose wisely]"
echo -n "Choose a name for your app: ";
read appName;
git clone https://github.com/axedre/phanes.git $appName
cd $appName
grep -Rl $default . | grep -v ".git" | grep -v "angular.js" | grep -v $0 | xargs sed -i "s/$default/$appName/g";
rm -rf .git .gitignore README.md
npm install
echo "Done. Remember to update package.json with infos about your web app and include a README.md file."
echo "Enjoy!"
