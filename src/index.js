const express = require('express');
const cors = require('cors');
const favicon = require('serve-favicon');
const path = require('path');
const app = express();

// Settings
app.set('port', process.env.PORT || 3000);

// Middlewares
app.use(express.json());

// Routes
app.use(require('./routes/equipo'));

// Cors
app.use(cors());

// Body Parser
app.use(express.urlencoded({ extended: true }));

// Favicon
app.use(favicon(path.join(__dirname, '../public', 'favicon.ico')));

// Starting the server
app.listen(app.get('port'), () => {
    console.log(`Server on port ${app.get('port')}`);
});
