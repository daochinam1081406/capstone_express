const express = require("express");
const multer = require("multer");

const storage = multer.diskStorage({
  destination: (req, file, callback) => {
    callback(null, `${process.cwd()}/public/img`);
  },
  filename: (req, file, callback) => {
    const d = new Date();
    const newName = d.getTime() + "_" + file.originalname;
    callback(null, newName);
  },
});
const upload = multer({ storage });
const uploadImg = upload.single("file");
const uploadImg1 = (req, res) => {
  res.send(req.file);
};

module.exports = {
  uploadImg,
  uploadImg1,
};
