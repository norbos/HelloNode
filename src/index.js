var express = require('express');

var app = express();

app.get('/', function (req, res) {
    console.log(`Requesting now from: ${req.hostname}`);
    res.send('Hello World! Updated Message');
});

app.listen(8000, function () {
    console.log('Listening to Port 8000');
});