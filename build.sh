#!/bin/sh -v

npm install
rm -rf dist
npm run build

# remove sounds
rm -rf dist/assets/sounds

pushd resume
rm -rf public
hugo
mv public ../dist/resume
popd

docker build -t kkland:lsy .