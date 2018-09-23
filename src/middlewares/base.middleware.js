const express = require('express');

const cors = require('cors');
const favicon = require('serve-favicon');
const path = require('path');

module.exports = (app) => {
  app.use(express.json());
  app.use(cors());
  app.use(express.urlencoded({
    extended: true
  }));
  app.use(favicon(path.join(__dirname, '../../public', 'favicon.ico')));

  return app;
};