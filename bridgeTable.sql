INSERT INTO ingredientinrecipe(recipeid, ingredientid)
VALUES (1,1);

ISERT INTO ingredientinrecipe(recipeid,ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b
ON a.recipeName = 'Pumpkin Tartlets' AND b.ingredientname = 'pumkin puree'

SELECT a.recipeName, b.ingredientName FROM recipe a 
INNER JOIN ingredientInRecipe c 
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;