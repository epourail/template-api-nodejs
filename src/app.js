const express = require('express');
const logger = require('morgan');

const usersRouter = require('./routes/ping');

const app = express();

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.use('/ping', usersRouter);

module.exports = app;
