import express from "express";

// Create an Express application
const app = express();

// Define the port
const PORT = 80;

// Main endpoint
app.get("/api", (req, res) => {
  res.send("Hello, world!");
});

// Health check endpoint
app.get("/api/health", (req, res) => {
  res.json({ status: "healthy" });
});

// Start the server
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
