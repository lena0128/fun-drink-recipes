# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

User.create([
    {username: "Joyce13", email:"joyce13@email.com", password: "password13"}, 
    {username: "Lena14", email:"lena14@email.com", password: "password14"}
])

Ingredient.create([
    {name: "Rum",
    image: "https://www.thecocktaildb.com/images/ingredients/Rum.png", 
    description: "Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels. The majority of the world's rum production occurs in the Caribbean and Latin America.",
    alcohol: "yes"
    }, 
    { 
     name: "Vodka",
     image: "https://www.thecocktaildb.com/images/ingredients/Vodka.png",
     description: "Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. Traditionally, vodka is made by the distillation of fermented cereal grains or potatoes, though some modern brands use other substances, such as fruits or sugar. ",
     alcohol: "yes"
    },   
    {
     name: "Gin",
     image: "https://www.thecocktaildb.com/images/ingredients/Gin.png",
     description: "Gin is a distilled alcoholic drink that derives its predominant flavour from juniper berries (Juniperus communis). Gin is one of the broadest categories of spirits, all of various origins, styles, and flavour profiles, that revolve around juniper as a common ingredient. ",
     alcohol: "yes"
    },
    {
    name: "Tequila",
    image: "https://www.thecocktaildb.com/images/ingredients/Tequila.png",
    description: "Tequila is a regionally specific distilled beverage and type of alcoholic drink made from the blue agave plant, primarily in the area surrounding the city of Tequila, 65 km (40 mi) northwest of Guadalajara, and in the highlands (Los Altos) of the central western Mexican state of Jalisco. Aside from differences in region of origin, tequila is a type of mezcal (and the regions of production of the two drinks are overlapping). The distinction in the method of production is that tequila must use only blue agave plants rather than any type of agave. Tequila is commonly served neat in Mexico and as a shot with salt and lime across the rest of the world. The red volcanic soil in the region around the city of Tequila is particularly well suited to the growing of the blue agave, and more than 300 million of the plants are harvested there each year. Agave grows differently depending on the region. Blue agaves grown in the highlands Los Altos region are larger in size and sweeter in aroma and taste. Agaves harvested in the lowlands, on the other hand, have a more herbaceous fragrance and flavor. Mexican laws state that tequila can only be produced in the state of Jalisco and limited municipalities in the states of Guanajuato, Michoacán, Nayarit, and Tamaulipas. Tequila is recognized as a Mexican designation of origin product in more than 40 countries. It is protected through NAFTA in Canada and the United States,[6] through bilateral agreements with individual countries such as Japan and Israel, and has been a protected designation of origin product in the constituent countries of the European Union since 1997. Tequila contains alcohol (also known formally as ethanol) and is most often made at a 38% alcohol content (76 U.S. proof) for domestic consumption, but can be produced between 31 and 55% alcohol content (62 and 110 U.S. proof). Per U.S law, tequila must contain at least 40% alcohol (80 U.S. proof) to be sold in the United States.",
    alcohol: "yes"
},
    {
    name: "Coffee",
    image: "https://www.thecocktaildb.com/images/ingredients/Coffee.png",
    description: "Coffee is a brewed drink prepared from roasted coffee beans, which are the seeds of berries from the Coffea plant. The genus Coffea is native to tropical Africa (specifically having its origin in Ethiopia and Sudan) and Madagascar, the Comoros, Mauritius, and Réunion in the Indian Ocean. ",
    alcohol: "no"
},
    {
    name: "Milk",
    image: "https://www.thecocktaildb.com/images/ingredients/Milk.png",
    description: "Milk is a white liquid produced by the mammary glands of mammals. It is the primary source of nutrition for infant mammals (including humans who breastfeed) before they are able to digest other types of food. Early-lactation milk contains colostrum, which carries the mother's antibodies to its young and can reduce the risk of many diseases. It contains many other nutrients including protein and lactose. ",
    alcohol: "no"

},
    {
    name: "Coke",
    image: "https://www.thecocktaildb.com/images/ingredients/Coca-Cola.png",
    description: "Coca-Cola, or Coke, is a carbonated soft drink produced by The Coca-Cola Company. Originally intended as a patent medicine, it was invented in the late 19th century by John Pemberton and was bought out by businessman Asa Griggs Candler, whose marketing tactics led Coca-Cola to its dominance of the world soft-drink market throughout the 20th century. ",
    alcohol: "no"
},

{
    name: "Triple sec",
    image: "https://www.thecocktaildb.com/images/ingredients/Triple%20Sec.png",
    description: "Triple sec, originally Curaçao triple sec, is a variety of Curaçao liqueur, an orange-flavoured liqueur made from the dried peels of bitter and/or sweet oranges.",
    alcohol: "yes"
},

{
    name: "Lime Juice",
    image: "https://www.thecocktaildb.com/images/ingredients/Lime%20Juice.png",
    description: "Not available.",
    alcohol: "no"
},

{
    name: "Salt",
    image: "https://www.thecocktaildb.com/images/ingredients/Salt.png",
    description: "Table salt or common salt is a mineral composed primarily of sodium chloride (NaCl), a chemical compound belonging to the larger class of salts; salt in its natural form as a crystalline mineral is known as rock salt or halite. Salt is present in vast quantities in seawater, where it is the main mineral constituent. ",
    alcohol: "no"
},

{
    name: "Blue Curacao",
    image: "https://www.thecocktaildb.com/images/ingredients/Blue%20Curacao.png",
    description: "Curaçao is a liqueur flavored with the dried peel of the Laraha citrus fruit, grown on the island of Curaçao. ",
    alcohol: "yes"
},

{
    name: "Lime",
    image: "https://www.thecocktaildb.com/images/ingredients/Lime.png",
    description: "A lime is a hybrid citrus fruit, which is typically round, lime green, 3–6 centimetres (1.2–2.4 in) in diameter, and contains acidic juice vesicles. ",
    alcohol: "no"
},

{
    name: "Agave Syrup",
    image: "https://www.thecocktaildb.com/images/ingredients/Agave%20Syrup.png",
    description: "Agave nectar (more accurately called agave syrup) is a sweetener commercially produced from several species of agave, including Agave tequilana (blue agave) and Agave salmiana. Agave syrup is sweeter than honey and tends to be less viscous. Most agave syrup comes from Mexico and South Africa. ",
    alcohol: "no"
},

{
    name: "Ice",
    image: "https://www.thecocktaildb.com/images/ingredients/Ice.png",
    description: "N/A ",
    alcohol: "no"
},

{
    name: "Cream of Coconut",
    image: "https://www.thecocktaildb.com/images/ingredients/Cream%20of%20Coconut.png",
    description: "Cream of Coconut is made with 100% cane sugar and contains real coconut meat (not just coconut milk). ",
    alcohol: "no"
},

{
    name: "Strawberry Schnapps",
    image: "https://www.thecocktaildb.com/images/ingredients/Strawberry%20Schnapps.png",
    description: "Schnapps or schnaps is a type of alcoholic beverage that may take several forms, including distilled fruit brandies, herbal liqueurs, infusions, and flavored liqueurs made by adding fruit syrups, spices, or artificial flavorings to neutral grain spirits. ",
    alcohol: "yes"
},

{
    name: "Strawberries",
    image: "https://www.thecocktaildb.com/images/ingredients/Strawberries.png",
    description: "The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries. It is cultivated worldwide for its fruit. The fruit is widely appreciated for its characteristic aroma, bright red color, juicy texture, and sweetness. It is consumed in large quantities, either fresh or in such prepared foods as preserves, juice, pies, ice creams, milkshakes, and chocolates. ",
    alcohol: "no"
},

{
    name: "Watermelon",
    image: "https://www.thecocktaildb.com/images/ingredients/Watermelon.png",
    description: "Watermelon (Citrullus lanatus) is a plant species in the family Cucurbitaceae, a vine-like flowering plant originally domesticated in West Africa. It is a highly cultivated fruit worldwide, having more than 1,000 varieties. Watermelon is a scrambling and trailing vine in the flowering plant family Cucurbitaceae. There is evidence from seeds in Pharaoh tombs of watermelon cultivation in Ancient Egypt. Watermelon is grown in favorable climates from tropical to temperate regions worldwide for its large edible fruit, which is a berry with a hard rind and no internal divisions, and is botanically called a pepo. The sweet, juicy flesh is usually deep red to pink, with many black seeds, although seedless varieties exist. The fruit can be eaten raw or pickled, and the rind is edible after cooking. It is commonly consumed as a juice or as an ingredient in mixed beverages.",
    alcohol: "no"
},

{
    name: "Mint",
    image: "https://www.thecocktaildb.com/images/ingredients/Mint.png",
    description: "Lamiaceae or Labiatae is a family of flowering plants commonly known as the mint or deadnettle family. Many of the plants are aromatic in all parts and include widely used culinary herbs, such as basil, mint, rosemary, sage, savory, marjoram, oregano, hyssop, thyme, lavender, and perilla. Some species are shrubs, trees (such as teak), or, rarely, vines. Many members of the family are widely cultivated, not only for their aromatic qualities but also their ease of cultivation, since they are readily propagated by stem cuttings. ",
    alcohol: "no"
},

{
    name: "Grapefruit Juice",
    image: "https://www.thecocktaildb.com/images/ingredients/Grapefruit%20Juice.png",
    description: "Grapefruit juice is the juice from grapefruits. It is rich in vitamin C and ranges from sweet-tart to very sour. Variations include white grapefruit, pink grapefruit and ruby red grapefruit juice. ",
    alcohol: "no"
},

{
    name: "Goldschlager",
    image: "https://www.thecocktaildb.com/images/ingredients/Goldschlager.png",
    description: "Goldschläger is a Swiss cinnamon schnapps (43.5% alcohol by volume or 87 proof; originally it was 53.5% alcohol or 107 proof),[1] a liqueur with very thin, yet visible flakes of gold floating in it. ",
    alcohol: "yes"
},

{
    name: "Butterscotch Schnapps",
    image: "https://www.thecocktaildb.com/images/ingredients/Butterscotch%20Schnapps.png",
    description: "Schnapps or schnaps is a type of alcoholic beverage that may take several forms, including distilled fruit brandies, herbal liqueurs, infusions, and flavored liqueurs made by adding fruit syrups, spices, or artificial flavorings to neutral grain spirits. ",
    alcohol: "yes"
},

{
    name: "Powdered Sugar",
    image: "https://www.thecocktaildb.com/images/ingredients/Powdered%20Sugar.png",
    description: "Powdered sugar, also called confectioners' sugar, 10X sugar or icing sugar, is a finely ground sugar produced by milling granulated sugar into a powdered state. ",
    alcohol: "no"
},

{
    name: "Nutmeg",
    image: "https://www.thecocktaildb.com/images/ingredients/Nutmeg.png",
    description: "Nutmeg is the seed or ground spice of several species of the genus Myristica. Myristica fragrans is a dark-leaved evergreen tree cultivated for two spices derived from its fruit: nutmeg, from its seed, and mace, from the seed covering. It is also a commercial source of an essential oil and nutmeg butter. ",
    alcohol: "no"
},

{
    name: "Chocolate Liqueur",
    image: "https://www.thecocktaildb.com/images/ingredients/Chocolate%20Liqueur.png",
    description: "N/A ",
    alcohol: "yes"
},

{
    name: "Amaretto",
    image: "https://www.thecocktaildb.com/images/ingredients/Amaretto.png",
    description: "Amaretto is a sweet, almond-flavoured, Italian liqueur associated with Saronno, Italy. Various commercial brands are made from a base of apricot pits, almonds, or both. When served as a beverage, amaretto can be drunk by itself, used as an ingredient to create several popular mixed drinks, or added to coffee. Amaretto is also commonly used in culinary applications. ",
    alcohol: "yes"
},

{
    name: "Orange Juice",
    image: "https://www.thecocktaildb.com/images/ingredients/Orange%20Juice.png",
    description: "N/A ",
    alcohol: "no"
},

{
    name: "Banana",
    image: "https://www.thecocktaildb.com/images/ingredients/Banana.png",
    description: "N/A ",
    alcohol: "no"
},

{
    name: "Vanilla Ice-Cream",
    image: "https://www.thecocktaildb.com/images/ingredients/Vanilla%20Ice-Cream.png",
    description: "N/A ",
    alcohol: "no"
},

{
    name: "Godiva Liqueur",
    image: "https://www.thecocktaildb.com/images/ingredients/Godiva%20Liqueur.png",
    description: "N/A ",
    alcohol: "yes"
},

{
    name: "Caramel Sauce",
    image: "https://www.thecocktaildb.com/images/ingredients/Caramel%20Sauce.png",
    description: "Caramel is a medium to dark-brown confectionery product made by heating a variety of sugars. It can be used as a flavoring in puddings and desserts, as a filling in bonbons, or as a topping for ice cream and custard. ",
    alcohol: "no"
}

])

rm_1 = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
rm_1_array = JSON.parse(rm_1)["drinks"]

rm_1_array.each do |drink|
    Drink.create(
    drink_name: drink["strDrink"],
    category: drink["strCategory"],
    alcoholic: drink["strAlcoholic"],
    drink_thumb: drink["strDrinkThumb"],
    drink_recipe: drink["strInstructions"],
    user_id: 2
    )
end

rm_2 = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=milk"
rm_2_array = JSON.parse(rm_2)["drinks"]

rm_2_array.each do |drink|
    Drink.create(
    drink_name: drink["strDrink"],
    category: drink["strCategory"],
    alcoholic: drink["strAlcoholic"],
    drink_thumb: drink["strDrinkThumb"],
    drink_recipe: drink["strInstructions"],
    user_id: 1
    )
end

Measurement.create([
    {measure: "1 1/2 oz ", drink_id: 1, ingredient_id: 4},
    {measure: "1/2 oz ", drink_id: 1, ingredient_id: 8},
    {measure: "1 oz ", drink_id: 1, ingredient_id: 9},
    {measure: "null ", drink_id: 1, ingredient_id: 10},
    {measure: "1 1/2 oz ", drink_id: 2, ingredient_id: 4},
    {measure: "1 oz ", drink_id: 2, ingredient_id: 11},
    {measure: "1 oz ", drink_id: 2, ingredient_id: 9},
    {measure: "Coarse ", drink_id: 2, ingredient_id: 10},
    {measure: "4.5 cl ", drink_id: 3, ingredient_id: 4},
    {measure: "1.5 cl ", drink_id: 3, ingredient_id: 9},
    {measure: "2 spoons ", drink_id: 3, ingredient_id: 13},
    {measure: "1/4 cup ", drink_id: 4, ingredient_id: 4},
    {measure: "3 tblsp fresh ", drink_id: 4, ingredient_id: 9},
    {measure: "1 cup ", drink_id: 4, ingredient_id: 14},
    {measure: "1/4 cup ", drink_id: 4, ingredient_id: 15},
    {measure: "1/2 oz ", drink_id: 5, ingredient_id: 16},
    {measure: "1 oz ", drink_id: 5, ingredient_id: 4},
    {measure: "1/2 oz ", drink_id: 5, ingredient_id: 8},
    {measure: "1 oz ", drink_id: 5, ingredient_id: 9},
    {measure: "1 oz ", drink_id: 5, ingredient_id: 17},
    {measure: "null ", drink_id: 5, ingredient_id: 10},
    {measure: "1/2 cup ", drink_id: 6, ingredient_id: 18},
    {measure: "5 ", drink_id: 6, ingredient_id: 19},
    {measure: "Juice of 1/2 ", drink_id: 6, ingredient_id: 20},
    {measure: "1 shot ", drink_id: 6, ingredient_id: 12},
    {measure: "Garnish with ", drink_id: 6, ingredient_id: 4},
    {measure: "1 oz ", drink_id: 7, ingredient_id: 21},
    {measure: "1 oz ", drink_id: 7, ingredient_id: 22},
    {measure: "1 oz ", drink_id: 7, ingredient_id: 6},
    {measure: "2 oz ", drink_id: 8, ingredient_id: 1},
    {measure: "1 cup ", drink_id: 8, ingredient_id: 6},
    {measure: "1 tsp ", drink_id: 8, ingredient_id: 23},
    {measure: "null ", drink_id: 8, ingredient_id: 24},
    {measure: "1/2 shot ", drink_id: 9, ingredient_id: 25},
    {measure: "1/2 shot ", drink_id: 9, ingredient_id: 6},
    {measure: "1 dash ", drink_id: 9, ingredient_id: 26},
    {measure: "10 cl cold ", drink_id: 10, ingredient_id: 6},
    {measure: "4 cl ", drink_id: 10, ingredient_id: 27},
    {measure: "2 tsp ", drink_id: 10, ingredient_id: 13},
    {measure: "1/2 ", drink_id: 10, ingredient_id: 28},
    {measure: "3 cups ", drink_id: 11, ingredient_id: 29},
    {measure: "1 cup ", drink_id: 11, ingredient_id: 6},
    {measure: "1/2 cup ", drink_id: 11, ingredient_id: 30},
    {measure: "4 tablespoons ", drink_id: 11, ingredient_id: 31}
])

