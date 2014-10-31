#!/bin/sh
rm -rf dist
coffee -o dist -c mediator.coffee
r.js -convert dist dist/amd
sed "s/define(/define('mediatorjs', /g" dist/amd/mediator.js > dist/amd/mediator_named.js
