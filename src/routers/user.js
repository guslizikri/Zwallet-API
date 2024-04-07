const express = require("express");
const routers = express.Router();
const userController = require("../controllers/user.js");
const authMiddleware = require("../middleware/auth.js");
const uploadMiddleware = require("../middleware/upload.js");

routers.patch(
  "/image",
  authMiddleware.authentication,
  uploadMiddleware.uploadUser,
  userController.updateImageUser
);
routers.get("/", authMiddleware.authentication, userController.getProfile);

routers.use("/image", express.static("./public/upload/user"));

routers.get(
  "/allusers",
  authMiddleware.authentication,
  userController.getAllUsers
);

// yang get all ini sepertinya tidak dipakai
routers.get("/all", authMiddleware.authentication, userController.getAllUser);
routers.post(
  "/checkpin",
  authMiddleware.authentication,
  userController.checkPin
);
routers.patch(
  "/updatepin",
  authMiddleware.authentication,
  userController.updatePin
);
routers.patch(
  "/updatepass",
  authMiddleware.authentication,
  userController.updatePass
);
routers.get("/:id", authMiddleware.authentication, userController.getUserById);

routers.post("/create", userController.createUser);
routers.patch("/pin/add", userController.createPin);
routers.post("/email/check", userController.checkEmail);
routers.patch("/password/reset", userController.resetPassword);

module.exports = routers;
