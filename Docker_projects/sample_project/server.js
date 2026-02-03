const express = require("express");
const path = require("path");
const app = express();

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Serve the HTML
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "index.html"));
});

// Serve static images
app.use("/images", express.static(path.join(__dirname, "images")));

// Handle form submission
app.post("/submit", (req, res) => {
  const message = req.body.message;
  console.log("Received:", message);
  res.send("Message received!");
});

app.listen(3000, () => {
  console.log("Server running on http://localhost:3000");
});
