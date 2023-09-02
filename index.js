require('dotenv').config();
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const middleware = require("./app/firebase/middleware");
const app = express();

var corsOptions = {
  optionsSuccessStatus: 200,
  credentials: true,
  origin: "*"
};

app.use(cors(corsOptions));

// parse requests of content-type - application/json
app.use(bodyParser.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// routes
app.use("/api", middleware);
require("./app/routes/payos.routes")(app);
require("./app/routes/member.routes")(app);
require("./app/routes/fund.routes")(app);
require("./app/routes/auth.routes")(app);
require("./app/routes/role.routes")(app);
require("./app/routes/level.routes")(app);
require("./app/routes/billing.routes")(app);

// set port, listen for requests
const PORT = process.env.PORT || 8080;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}.`);
});