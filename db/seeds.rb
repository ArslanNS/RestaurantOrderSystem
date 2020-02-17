# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Sections
section_starters = Section.create(name: "STARTERS")
section_mains = Section.create(name: "MAINS")
section_sides = Section.create(name: "SIDES")
section_desserts = Section.create(name: "DESSERTS")
section_drinks = Section.create(name: "DRINKS")

# Create Foods
Food.create(
    name: "Chicken Quesadilla",
    description: "Enjoy a mexican classic with our renowned special Chicken Quesadilla.",
    allergens: "Corn, Milk",
    calories: 293,
    price: 4.59,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/mexican-food-1885616_1280.jpg",
    section: section_starters
)
Food.create(
    name: "Tortilla Chips & Dips",
    description: "Tortilla chips with a selection of dips such as Salsa, Chilli, Guacamole. Vegetarian Friendly.",
    allergens: "Corn",
    calories: 465,
    price: 3.99,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/nachos-1615740_1280.jpg",
    section: section_starters
)
Food.create(
    name: "Garlic Tortilla",
    description: "A great choice for those looking for something easy to eat. Vegetarian and Vegan Friendly.",
    allergens: "Corn",
    calories: 210,
    price: 3.99,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/tortilla-1353091_1280.jpg",
    section: section_starters
    )
Food.create(
    name: "BBQ Chicken Fajitas",
    description: "Steaming hot BBQ Chicken Fajitas for you to enjoy. Served with Rice and dips.",
    allergens: "Corn, Gluten, Milk and Say",
    calories: 829,
    price: 11.49,
    active: true,
    url: "https://live.staticflickr.com/3764/8785194803_fbc83ab3c7_b.jpg",
    section: section_mains
    )
Food.create(
    name: "Steak Tacos",
    description: "Steak strips served in classic Taco shells with rice and sauce.",
    allergens: "Corn, Gluten, Soy and Milk",
    calories: 755,
    price: 12.49,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/tacos-2128212_1280.jpg",
    section: section_mains
    )
Food.create(
    name: "Halloumi Burger",
    description: "A classic from outside the borders of Mexico. Vegetarian Friendly.",
    allergens: "Milk",
    calories: 680,
    price: 10.99,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/burger-2011303_1280.jpg",
    section: section_mains
    )
Food.create(
    name: "Fries",
    description: "Enjoy a classic with your mexican food.",
    allergens: "None",
    calories: 312,
    price: 1.99,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/bowl-1842294_1280.jpg",
    section: section_sides
    )
Food.create(
    name: "Sweet Potato Fries",
    description: "A side dish to sweeten up your meal.",
    allergens: "None",
    calories: 130,
    price: 2.99,
    active: true,
    url: "https://cdn.pixabay.com/photo/2016/01/26/00/53/potatoe-1161819_1280.jpg",
    section: section_sides
    )
Food.create(
    name: "Citrus Salad",
    description: "Our finest salad to accompany your mains.",
    allergens: "None",
    calories: 110,
    price: 1.99,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/salad-1591280_1280.jpg",
    section: section_sides
    )
Food.create(
    name: "Four Churros With Chocolate Sauce",
    description: "Our classic churros come with a delicious hot sauce for Vegetarians and Vegans.",
    allergens: "None",
    calories: 870,
    price: 4.99,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/breakfast-1204819_1280.jpg",
    section: section_desserts
    )
Food.create(
    name: "Two Scoops of Ice Cream with Cream",
    description: "Enjoy Vanilla, Strawberry and Cream in this simple but tasty dessert.",
    allergens: "Milk",
    calories: 640,
    price: 3.49,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/ice-3300054_1280.png",
    section: section_desserts
    )
Food.create(
    name: "Chocolate Brownie with Ice Cream.",
    description: "Enjoy a hot brownie with vanilla ice cream. Served with a chocolate sauce.",
    allergens: "Milk",
    calories: 670,
    price: 4.59,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/brownie-on-a-plate-bokeh.jpg",
    section: section_desserts
    )
Food.create(
    name: "Coca Cola (330ml)",
    description: "Enjoy the refreshing taste of Coca Cola.",
    allergens: "None",
    calories: 140,
    price: 2.29,
    active: true,
    url: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTgt8rSrAUWIv5qIH2T7H-6Y8QbLx-KMdxzIOmil-pkALtcX-Oz",
    section: section_drinks
    )
Food.create(
    name: "Orange Juice (230ml)",
    description: "Freshly Squeezed Orange Juice every morning.",
    allergens: "None",
    calories: 112,
    price: 1.49,
    active: true,
    url: "https://live.staticflickr.com/1933/31617293018_5ab616b7c2_b.jpg",
    section: section_drinks
    )
Food.create(
    name: "Glass of Water (330ml)",
    description: "Fresh from the filtered tap.",
    allergens: "None",
    calories: 0,
    price: 0,
    active: true,
    url: "https://storage.needpix.com/rsynced_images/water-3708187_1280.jpg",
    section: section_drinks
    )