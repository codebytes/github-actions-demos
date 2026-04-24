const express = require("express");
const removespace = require("../index");

const app = express();
app.use(express.json());

app.get("/", (req, res) => {
  res.json({ message: "Hello from the Node.js Example API!" });
});

app.get("/health", (req, res) => {
  res.json({ status: "healthy" });
});

app.post("/removespace", (req, res) => {
  const { text } = req.body;
  if (text === undefined) {
    return res.status(400).json({ error: "Missing 'text' field in request body" });
  }
  try {
    const result = removespace(text);
    return res.json({ original: text, result });
  } catch (err) {
    return res.status(400).json({ error: err.message });
  }
});

module.exports = app;
