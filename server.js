const express = require("express");
const path = require("path");

const app = express();

// 👇 Replace 'your-angular-app-name' with your actual dist folder name
app.use(express.static(path.join(__dirname, "dist/stolt")));

app.get("/*", (req, res) => {
  res.sendFile(path.join(__dirname, "dist/stolt/index.html"));
});

const PORT = process.env.PORT || 3009;
app.listen(PORT, () => {
  console.log(`✅ Angular app is running on port ${PORT}`);
});
