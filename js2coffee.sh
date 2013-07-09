PATH=$(npm bin):$PATH
mkdir -p alfredtmp && cd alfredtmp
pbpaste > tmp.js
js2coffee tmp.js > tmp.coffee
cat tmp.coffee | pbcopy
cd ../ && rm -r alfredtmp