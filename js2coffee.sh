function convertToCoffee {
  PATH=$(npm bin):$PATH
  mkdir -p alfredtmp && cd alfredtmp
  pbpaste > tmp.js
  if [ -d "$(npm bin)" ]; then
    "$(npm bin)/js2coffee" tmp.js > tmp.coffee
  else
    js2coffee tmp.js > tmp.coffee
  fi
  cat tmp.coffee | pbcopy
  cd ../ && rm -r alfredtmp
}

if [ -d "node_modules" ]; then
  convertToCoffee
else
  npm install js2coffee
  convertToCoffee
fi
