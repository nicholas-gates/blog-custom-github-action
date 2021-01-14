#!/bin/bash
set -e

# node --inspect-brk=0.0.0.0:9229  /app/index.js $@
node /app/index.js $@
