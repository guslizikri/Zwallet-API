const express = require("express");
const routers = express.Router();
const topupController = require("../controllers/topup.js");
const authMiddleware = require("../middleware/auth.js");

// topup dev only
routers.patch("/", authMiddleware.authentication, topupController.topup);

module.exports = routers;
