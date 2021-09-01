# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'rest-client'

Ingredient.create([
    {name: "Rum",
    image: "https://www.thecocktaildb.com/images/ingredients/Rum.png", 
    description: "Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels. The majority of the world's rum production occurs in the Caribbean and Latin America. Rum is also produced in Scotland, Austria, Spain, Australia, New Zealand, Fiji, the Philippines, India, Reunion Island, Mauritius, South Africa, Taiwan, Thailand, Japan, the United States, and Canada. Rums are produced in various grades. Light rums are commonly used in cocktails, whereas golden and dark rums were typically consumed straight or neat, on the rocks, or used for cooking, but are now commonly consumed with mixers. Premium rums are also available, made to be consumed either straight or iced. Rum plays a part in the culture of most islands of the West Indies as well as in The Maritimes and Newfoundland. This beverage has famous associations with the Royal Navy (where it was mixed with water or beer to make grog) and piracy (where it was consumed as bumbo). Rum has also served as a popular medium of economic exchange, used to help fund enterprises such as slavery (see Triangular trade), organized crime, and military insurgencies (e.g., the American Revolution and Australia's Rum Rebellion). The precursors to rum date back to antiquity. Development of fermented drinks produced from sugarcane juice is believed to have first occurred either in ancient India or in China, and to have spread from there. An example of such an early drink is brum. Produced by the Malay people, brum dates back thousands of years. Marco Polo also recorded a 14th-century account of a very good wine of sugar that was offered to him in the area that became modern-day Iran. The first distillation of rum took place on the sugarcane plantations of the Caribbean in the 17th century. Plantation slaves first discovered molasses, a byproduct of the sugar refining process, could be fermented into alcohol. Later, distillation of these alcoholic byproducts concentrated the alcohol and removed impurities, producing the first true rums. Tradition suggests rum first originated on the island of Barbados. However, in the decade of the 1620s, rum production was recorded in Brazil. A liquid identified as rum has been found in a tin bottle found on the Swedish warship Vasa, which sank in 1628. A 1651 document from Barbados stated, The chief fuddling they make in the island is Rumbullion, alias Kill-Divil, and thi is made of sugar canes distilled, a hot, hellish, and terrible liquor.",
    alcohol: "yes"
    }, 
    { 
     name: "Vodka",
     image: "https://www.thecocktaildb.com/images/ingredients/Vodka.png",
     description: "Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. Traditionally, vodka is made by the distillation of fermented cereal grains or potatoes, though some modern brands use other substances, such as fruits or sugar. Since the 1890s, the standard Polish, Russian, Belarusian, Ukrainian, Estonian, Latvian, Lithuanian and Czech vodkas are 40% alcohol by volume ABV (80 US proof), a percentage that is widely misattributed to Dmitri Mendeleev. The European Union has established a minimum of 37.5% ABV for any European vodka to be named as such. Products sold as vodka in the United States must have a minimum alcohol content of 40%. Even with these loose restrictions, most vodka sold contains 40% ABV. For homemade vodkas and distilled beverages referred to as moonshine, see moonshine by country. Vodka is traditionally drunk neat (not mixed with any water, ice, or other mixer), though it is often served chilled in the vodka belt countries (Belarus, Estonia, Finland, Iceland, Latvia, Lithuania, Norway, Poland, Russia, Sweden, Ukraine). It is also commonly used in cocktails and mixed drinks, such as the vodka martini, Cosmopolitan, vodka tonic, Screwdriver, Greyhound, Black or White Russian, Moscow Mule, and Bloody Mary. Scholars debate the beginnings of vodka. It is a contentious issue because very little historical material is available. For many centuries, beverages differed significantly compared to the vodka of today, as the spirit at that time had a different flavor, color and smell, and was originally used as medicine. It contained little alcohol, an estimated maximum of about 14%, as only this amount can be attained by natural fermentation. The still, allowing for distillation (burning of wine), increased purity, and increased alcohol content, was invented in the 8th century. A common property of the vodkas produced in the United States and Europe is the extensive use of filtration prior to any additional processing including the addition of flavorants. Filtering is sometimes done in the still during distillation, as well as afterwards, where the distilled vodka is filtered through activated charcoal and other media to absorb trace amounts of substances that alter or impart off-flavors to the vodka. However, this is not the case in the traditional vodka-producing nations, so many distillers from these countries prefer to use very accurate distillation but minimal filtering, thus preserving the unique flavors and characteristics of their products. The master distiller is in charge of distilling the vodka and directing its filtration, which includes the removal of the fore-shots, heads and tails. These components of the distillate contain flavor compounds such as ethyl acetate and ethyl lactate (heads) as well as the fusel oils (tails) that impact the usually desired clean taste of vodka. Through numerous rounds of distillation, or the use of a fractioning still, the taste is modified and clarity is increased. In contrast, distillery process for liquors such as whiskey, rum, and baijiu allow portions of the heads and tails to remain, giving them their unique flavors. Repeated distillation of vodka will make its ethanol level much higher than is acceptable to most end users, whether legislation determines strength limits or not. Depending on the distillation method and the technique of the stillmaster, the final filtered and distilled vodka may have as much as 95–96% ethanol. As such, most vodka is diluted with water prior to bottling. Polish distilleries make a very pure (96%, 192 proof, formerly also 98%) rectified spirit (Polish language: spirytus rektyfikowany). Technically a form of vodka, it is sold in liquor stores rather than pharmacies. Similarly, the German market often carries German, Hungarian, Polish, and Ukrainian-made varieties of vodka of 90 to 95% ABV. A Bulgarian vodka, Balkan 176°, has an 88% alcohol content. Everclear, an American brand, is also sold at 95% ABV.",
     alcohol: "yes"
    },   
    {
     name: "Gin",
     image: "https://www.thecocktaildb.com/images/ingredients/Gin.png",
     description: "Gin is a distilled alcoholic drink that derives its predominant flavour from juniper berries (Juniperus communis). Gin is one of the broadest categories of spirits, all of various origins, styles, and flavour profiles, that revolve around juniper as a common ingredient. From its earliest origins in the Middle Ages, the drink has evolved from a herbal medicine to an object of commerce in the spirits industry. Gin emerged in England after the introduction of the jenever, a Dutch liquor which originally had been a medicine. Although this development had been taking place since early 17th century, gin became widespread after the William of Orange-led 1688 Glorious Revolution and subsequent import restrictions on French brandy. Gin today is produced in subtly different ways, from a wide range of herbal ingredients, giving rise to a number of distinct styles and brands. After juniper, gin tends to be flavoured with botanical/herbal, spice, floral or fruit-flavours or often a combination. It is most commonly consumed mixed with tonic water. Gin is also often used as a base spirit to produce flavoured gin-based liqueurs such as, for example, Sloe gin, traditionally by the addition of fruit, flavourings and sugar.",
     alcohol: "yes"
    },
    {
    name: "Tequila",
    image: "https://www.thecocktaildb.com/images/ingredients/Tequila.png",
    description: "Tequila (Spanish pronunciation: [teˈkila] (About this sound listen)) is a regionally specific distilled beverage and type of alcoholic drink made from the blue agave plant, primarily in the area surrounding the city of Tequila, 65 km (40 mi) northwest of Guadalajara, and in the highlands (Los Altos) of the central western Mexican state of Jalisco. Aside from differences in region of origin, tequila is a type of mezcal (and the regions of production of the two drinks are overlapping). The distinction in the method of production is that tequila must use only blue agave plants rather than any type of agave. Tequila is commonly served neat in Mexico and as a shot with salt and lime across the rest of the world. The red volcanic soil in the region around the city of Tequila is particularly well suited to the growing of the blue agave, and more than 300 million of the plants are harvested there each year. Agave grows differently depending on the region. Blue agaves grown in the highlands Los Altos region are larger in size and sweeter in aroma and taste. Agaves harvested in the lowlands, on the other hand, have a more herbaceous fragrance and flavor. Mexican laws state that tequila can only be produced in the state of Jalisco and limited municipalities in the states of Guanajuato, Michoacán, Nayarit, and Tamaulipas. Tequila is recognized as a Mexican designation of origin product in more than 40 countries. It is protected through NAFTA in Canada and the United States,[6] through bilateral agreements with individual countries such as Japan and Israel, and has been a protected designation of origin product in the constituent countries of the European Union since 1997. Tequila contains alcohol (also known formally as ethanol) and is most often made at a 38% alcohol content (76 U.S. proof) for domestic consumption, but can be produced between 31 and 55% alcohol content (62 and 110 U.S. proof). Per U.S law, tequila must contain at least 40% alcohol (80 U.S. proof) to be sold in the United States.",
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
}

])

rm_1 = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/filter.php?i=Rum"
rm_1_array = JSON.parse(rm_1)["drinks"]

rm_1_array.each do |drink|
    Drink.create(
    drink_name: drink["strDrink"],
    drink_thumb: drink["strDrinkThumb"],
    drink_recipe: "This is a recipe.",
    )
end

