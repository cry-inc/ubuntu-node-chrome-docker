# Ubuntu with Node and Chrome

Docker image based on Ubuntu with Node.js and Chrome preinstalled.
This image is intended for CI Node.js CI tasks such as transpiling, minification or headless E2E testing.
It is **not** suited for production use, since it is kind of heavy, often outdated and includes additional software that makes no sense in production.

## Included Software

* Whatever is included in the minimal ubuntu base image
* Node.js LTS installed from https://deb.nodesource.com
* Google Chrome Stable from https://dl.google.com/linux/chrome/deb/
* build-essential (make, gcc, g++, etc), often required for native node modules
* git, curl and wget
* ...and some other smaller dependencies (see Dockerfile)

## Tags

The tag format is: u{ubuntu-version}-n{node-version}-c{chrome-version}
The following comamnds are used to extract the version numbers:

* Ubuntu: lsb_release -a
* Node: node --version
* Chrome: google-chrome --version
