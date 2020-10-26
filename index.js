"use strict";
var express = require("express");
var cors = require("cors");
const { createProxyMiddleware } = require("http-proxy-middleware");

var corsOptions = {
  origin: true,
  preflightContinue: false,
};

function onProxyRes(proxyRes, req, res) {
  delete proxyRes.headers["content-security-policy"];
  delete proxyRes.headers["x-frame-options"];
  delete proxyRes.headers["x-content-type-options"];
  if (req.headers["origin"]) {
    proxyRes.headers["Access-Control-Allow-Origin"] = req.headers["origin"];
  }
}

var proxyTable = {
  "website": "url",
};

var options = {
  changeOrigin: true,
  target: "https://example.com",
  preserveHostHdr: true,
  onProxyRes: onProxyRes,
  router: proxyTable,
  secure: false,
  followRedirects: true,
};

var myProxy = createProxyMiddleware(options);

var app = express();
app.options("*", cors(corsOptions));
app.options("*", (req, res) => {
  res.send("OK");
});
app.use(myProxy);
app.use("*", cors(corsOptions));
app.listen(3000);