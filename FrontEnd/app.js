const express = require("express");
const bodyParser = require("body-parser");
const axios = require("axios");

const app = express();

app.set("view engine", "ejs");

app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.static("public"));

app.get("/", (req, res) => {
    res.render("index", { result: null });
});

app.post("/submit", async (req, res) => {
    try {

        const response = await axios.post(
            "http://backend:5000/process",
            {
                name: req.body.name
            }
        );

        res.render("index", {
            result: response.data.message
        });

    } catch (err) {
        console.error(err.message);
        res.send("Cannot connect to Flask Backend");
    }
});

app.listen(3000, () => {
    console.log("Frontend running on port 3000");
});