'use strict';

const express = require('express');
const grunt = require('grunt');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  //grunt.tasks("default");
  res.send('hello');
});
app.get('/unzip', (req, res) => {
  //grunt.tasks("default");
  grunt.tasks(['unzip']);
});
app.get('/grunt', (req, res) => {
  grunt.tasks("default");
});
app.get('/output', (req, res) => {
  grunt.tasks(['output']);
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);