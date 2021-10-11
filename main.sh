#!/bin/sh

#Terminal usage: bash main.sh <name of your CLI>

mkdir $1
cd $1
mkdir bin
cd bin
touch index.js
echo "#!/usr/bin/env node" > index.js
cd ..
npm init -y
cat > package.json << EOF
{
  "name": "$1",
  "version": "1.0.0",
  "description": "",
  "main": "./bin/index.js",
  "bin": {
    "$1": "./bin/index.js"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
EOF
echo "Done!"