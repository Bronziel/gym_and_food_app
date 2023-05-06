const functions = require("firebase-functions");
const express = require("express");
const admin = require("firebase-admin");

admin.initializeApp();

const app = express();
const db = admin.firestore();

app.get("/recipes", async (req, res) => {
  console.log("Received request for /recipes");

  const recipesRef = db.collection("recipes");
  const docs = await recipesRef.get();

  const recipes = [];
  docs.forEach((doc) => {
    recipes.push({id: doc.id, ...doc.data()});
  });
  

  res.json(recipes);
});

exports.api = functions.https.onRequest(app);
