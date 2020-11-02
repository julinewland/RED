var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');

var session = require('express-session');

let db = require('./database/models/index')
var app = express();
app.use(session({ secret: "thenetworktextosecreto", resave: true, saveUninitialized: true }))


app.use(function(req, res, next){
  res.locals = { 
    usuarioLog: req.session.usuarioLog
  }
  next()
})

app.use(function(req, res, next){
  
  if (res.cookies.usuarioLog != undefined && req.session.usuarioLog == null) {
    db.Usuario.findByPk(usuarioLog)
    .then (function(usuario){
      res.session.usuarioLog = usuario
    })
  } else {
    next()
  }

})

let rutaPost = require("./routes/post");
app.use("/post", rutaPost);

let rutaUser = require("./routes/user.js");
app.use("/user", rutaUser);

let rutaResultado = require ("./routes/resultado");
app.use("/Resultado", rutaResultado);

let rutaHome = require("./routes/home");
app.use("/home", rutaHome)

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
