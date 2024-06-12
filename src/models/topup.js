const db = require("../config/db");

const model = {
  topup: (user_id, balance) => {
    return new Promise((resolve, reject) => {
      db.query(
        `UPDATE users SET
        balance = balance + $1,
        updated_at = now()
        WHERE id = $2`,
        [balance, user_id]
      )
        .then((res) => {
          resolve(`Topup success`);
        })
        .catch((err) => {
          reject(err);
        });
    });
  },
};

module.exports = model;
