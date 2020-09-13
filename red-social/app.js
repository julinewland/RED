var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var app = express();

let rutaAgregarPost = require("./routes/agregarPost");
app.use("/agregarPost", rutaAgregarPost);

let rutaDetallePost = require("./routes/detallePost.js");
app.use("/detallePost", rutaDetallePost);

let rutaDetalleUsuario = require("./routes/detalleUsuario.js");
app.use("/detalleUsuario", rutaDetalleUsuario);

let rutaLogin = require("./routes/login.js");
app.use("/login", rutaLogin);

let rutaMiPerfil = require("./routes/miPerfil");
app.use("/miPerfil", rutaMiPerfil);

let rutaRegistracion = require("./routes/registracion");
app.use("/registracion", rutaRegistracion);

let rutaResultado = require ("./routes/resultado");
app.use("/Resultado", rutaResultado);

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/users', usersRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
