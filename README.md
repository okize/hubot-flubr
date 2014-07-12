[![NPM version](https://badge.fury.io/js/hubot-flubr.png)](http://badge.fury.io/js/hubot-flubr) [![NPM version](https://david-dm.org/okize/hubot-flubr.png)](https://david-dm.org/okize/hubot-flubr) [![Build Status](https://secure.travis-ci.org/okize/hubot-flubr.png)](http://travis-ci.org/okize/hubot-flubr)

# Hubot: Flubr

Hubot script that requests pass/fail images from a [Flubr app](https://github.com/okize/flubr) instance in response to build states

## Configuration

Use following env variables:

``HUBOT_FLUBR_URL`` url of a deployed instance of a [Flubr app](https://github.com/okize/flubr)

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