const express = require('express');
require('dotenv').config()
const productsRoute = require('./routes/productsRoute')
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json())

app.get('/', (req, res) => {
    res.send("Successfully connected");
})
app.use('/', productsRoute);
const port = process.env.PORT || 3030;
app.listen(port, () => { console.log(`Server Listening on port: ${port}`) })