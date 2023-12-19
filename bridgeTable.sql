INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 3);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
VALUES (1, 4);

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'cloves';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'Pastry dough';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'Egg wash (1 egg beaten with a splash of milk)';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Tartlets' AND b.ingredientname = 'pumpkin puree';

SELECT a.recipeName, b.ingredientName FROM recipe a
INNER JOIN IngredientInRecipe c
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;


CREATE TABLE recipe (
    id SERIAL PRIMARY KEY,
    recipeName VARCHAR(55) 
);

CREATE TABLE ingredient (
    id SERIAL PRIMARY KEY,
    ingredientName VARCHAR(55) 
);

CREATE TABLE IngredientInRecipe (
    id SERIAL PRIMARY KEY,
    recipeId INTEGER,
    ingredientId INTEGER,
    FOREIGN KEY (recipeId) REFERENCES recipe(id),
    FOREIGN KEY (ingredientId) REFERENCES ingredient(id)
);


INSERT INTO recipe (recipeName) VALUES ('Pumpkin Pasties');
INSERT INTO recipe (recipeName) VALUES ('Pumpkin Tartlets');
INSERT INTO recipe (recipeName) VALUES ('Creamy Pumpkin Soup');

INSERT INTO ingredient (ingredientName) VALUES ('pumpkin puree');
INSERT INTO ingredient (ingredientName) VALUES ('sugar');
INSERT INTO ingredient (ingredientName) VALUES ('cinnamon');
INSERT INTO ingredient (ingredientName) VALUES ('nutmeg');
INSERT INTO ingredient (ingredientName) VALUES ('cloves');
-- and so on

INSERT INTO ingredientinrecipe (recipeid, ingredientid)VALUES (1, 1);

ALTER TABLE recipe ADD COLUMN instructions text;

UPDATE recipe
SET instructions = 
    '<br>Mix pumpkin puree, sugar, and spices in a bowl.
    <br>Roll out the pastry dough and cut it into small circles.
    <br>Fold the dough over to create a half-moon shape and crimp the edges with a fork.
    <br>Brush the pasties with egg wash.
    <br>Bake at 375°F (190°C) for 20-25 minutes or until golden brown.'
WHERE id = 1;

UPDATE recipe
SET instructions = 
    '<br>Mix pumpkin puree, brown sugar, and spices in a bowl.
    <br>Spoon the mixture into mini tart shells.
    <br>Bake at 350°F (175°C) for 15-20 minutes or until set.
    <br>Let cool and garnish with whipped cream.'
WHERE id = 2;

UPDATE recipe
SET instructions = 
    '<br>Sauté the onion and garlic in a pot until soft.
    <br>Add the pumpkin puree and vegetable broth, and simmer for 20 minutes.
    <br>Blend the soup until smooth, then return it to the pot.
    <br>Blend the soup until smooth, then return it to the pot.
    <br>Blend the soup until smooth, then return it to the pot.
    <br>Stir in the heavy cream and season with salt and pepper.
    <br>Heat through and serve.'
WHERE id = 3;

SELECT a.recipeName, b.ingredientName FROM recipe a INNER JOIN IngredientInRecipe c ON a.id = c.recipeId INNER JOIN ingredient b ON b.id = c.ingredientId;