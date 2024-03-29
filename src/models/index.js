const { Sequelize } = require("sequelize");
const config = require("../configs/index");

const sequelize = new Sequelize(
  config.db_name,
  config.db_user,
  config.db_pass,
  {
    host: config.db_host,
    dialect: config.db_dialect,
    port: config.db_port,
  }
);

const checkConnect = async () => {
  try {
    await sequelize.authenticate();
    console.log("connect sql success");
  } catch {
    console.log("connect sql fail");
  }
};

checkConnect();

module.exports = sequelize;
