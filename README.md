[![NPM version](http://img.shields.io/npm/v/hubot-flubr.svg?style=flat)](https://www.npmjs.org/package/hubot-flubr)
[![Build Status](http://img.shields.io/travis/okize/hubot-flubr.svg?style=flat)](https://travis-ci.org/okize/hubot-flubr)
[![Dependency Status](http://img.shields.io/david/okize/hubot-flubr.svg?style=flat)](https://david-dm.org/okize/hubot-flubr)
[![Downloads](http://img.shields.io/npm/dm/hubot-flubr.svg?style=flat)](https://www.npmjs.org/package/hubot-flubr)

# Hubot: Flubr

Hubot script that requests pass/fail images from a [Flubr app](https://github.com/okize/flubr) instance in response to build states

## Configuration

Use following env variables:

``HUBOT_FLUBR_URL`` url of a deployed instance of a [Flubr app](https://github.com/okize/flubr)
``HUBOT_FLUBR_PASS`` regexp, defines PASS image trigger phrase
``HUBOT_FLUBR_FAIL`` regexp, defines FAIL image trigger phrase

## Installation

Run the following command to install this module as a Hubot dependency

```
$ npm install hubot-flubr --save
```

Confirm that `hubot-flubr` appears as a dependency in your Hubot `package.json` file.

```javascript
"dependencies": {
  "hubot":              "2.x",
  "hubot-scripts":      "2.x",
  "hubot-flubr":        "1.0.x"
}
```

To enable the script, add the `hubot-flubr` entry to the `external-scripts.json` file (you may need to create this file).
```
  ["hubot-flubr"]
```
