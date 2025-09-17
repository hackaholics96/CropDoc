import express from "express";
import dotenv from "dotenv";
import authRoutes from "./auth.js";

dotenv.config();

const app = express();
app.use(express.json());
app.use("/auth", authRoutes);

app.listen(5000, () => {
  console.log("Auth server running on port 5000");
});