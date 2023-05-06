const admin = require('firebase-admin');
const fs = require('fs');
const path = require('path');
const { initializeTestApp } = require('@firebase/testing');


const projectId = 'cookbook-895e3'; // Replace with your project ID
const app = initializeTestApp({ projectId });
console.log('d1');
const db = app.firestore();
console.log('d2');
const importRecipes = async () => {
  console.log('d3');
  const filePath = path.join(__dirname, '..', 'lib', 'initial_recipes.json');
  const jsonData = fs.readFileSync(filePath, 'utf-8');
  const recipes = JSON.parse(jsonData);
  console.log('d4');

  for (const recipe of recipes) {
    const recipeRef = db.collection('recipes').doc();
    console.log('d5');
    await recipeRef.set(recipe);
    console.log('d6');
  }

  console.log('Recipes imported successfully');
};

importRecipes()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error('Error importing recipes:', error);
    process.exit(1);
  });
