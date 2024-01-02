require("dotenv").config()
const express = require("express"),
    app = express();

const db = require("./Config/db");
const constant = require("./Constant");
const routes = require("./Routes/routes")();

app.use(express.json());
app.use("/api/", routes);
app.get('/', function(req, res) {
    res.sendFile(__dirname + '/public/index.html');
});
app.all("*", (request, response) => {
    response.status(405).json({message: constant.INVALID_URL, code : 405})
});

const {PORT} = process.env || 5000     
app.listen(PORT, (req, res) => {
    db.connect().then(() => {
        console.log("DB Connection success", PORT);
    }).catch((error) => {
        console.log("DB Error", error);
        db.close();
    });
});
module.exports = app;