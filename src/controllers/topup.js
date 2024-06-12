const model = require("../models/topup");
const response = require("../utils/response");

const controller = {
  topup: async (req, res) => {
    try {
      const balance = req.body.balance ? req.body.balance : 0;
      const data = await model.topup(req.decodeToken.id, balance);

      return response(res, 201, data);
    } catch (error) {
      return response(res, 500, error.message);
    }
  },
};

module.exports = controller;
