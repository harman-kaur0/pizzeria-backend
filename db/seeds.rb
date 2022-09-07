# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying all seeds"
Item.destroy_all
Category.destroy_all


puts "creating categories"
pizza = Category.create(name: "pizza", image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/entree-page/build.png");
pasta = Category.create(name: "pasta", image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/entree-page/pasta.png"); 
dessert = Category.create(name: "desserts", image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/entree-page/dessert.png");
drink = Category.create(name: "drinks", image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/entree-page/drinks.png");

puts "creating items"
# PIZZA
Item.create(category: pizza, name: "Meat Lovers", price: {'S': 10.99, 'M': 14.99, 'L': 17.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_MX.jpg", ingredients: ['Tomato Sauce', 'Cheese', 'Pepperoni', 'Beef', 'Italian Sausage', 'Ham']);
Item.create(category: pizza, name: "Deluxe", price: {'S': 11.99, 'M': 15.99, 'L': 18.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_DX.jpg", ingredients: ['Tomato Sauce', 'Cheese', 'Pepperoni', 'Mushrooms', 'Green Peppers', 'Onions', 'Italian Sausage']);
Item.create(category: pizza, name: "Cheese", price: {'S': 6.99, 'M': 9.99, 'L': 11.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_PIZCZ.jpg", ingredients: ['Tomato Sauce', 'Cheese']);
Item.create(category: pizza, name: "Pepperoni", price: {'S': 8.99, 'M': 12.99, 'L': 15.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_PIZPX.jpg", ingredients: ['Tomato Sauce', 'Cheese', 'Pepperoni']);
Item.create(category: pizza, name: "Veggie Lovers", price: {'S': 9.99, 'M': 13.99, 'L': 16.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_PIZPV.jpg", ingredients: ['Tomato Sauce', 'Cheese', 'Mushrooms', 'Onions', 'Diced Tomatoes', 'Roasted Red Peppers', 'Spinach', 'Black Olives', 'Feta Cheese']);
Item.create(category: pizza, name: "Hawaiian", price: {'S': 9.99, 'M': 13.99, 'L': 16.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_PIZUH.jpg", ingredients: ['Tomato Sauce', 'Cheese', 'Ham', 'Bacon', 'Pineapple', 'Roasted Red Peppers', 'Shredded Provolone Cheese']);
Item.create(category: pizza, name: "Chicken Bacon", price: {'S': 10.99, 'M': 14.99, 'L': 17.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_PIZCR.jpg", ingredients: ['Ranch Sauce', 'Chicken', 'Bacon', 'Diced Tomatoes', 'Shredded Provolone Cheese']);
Item.create(category: pizza, name: "Spinach and Feta", price: {'S': 9.99, 'M': 13.99, 'L': 16.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_PISPF.jpg", ingredients: ['Alfredo Sauce', 'Cheese', 'Onions', 'Spinach', 'Feta Cheese', 'Shredded Parmesan Cheese', 'Shredded Provolone Cheese']);
Item.create(category: pizza, name: "Cheese Steak", price: {'S': 8.99, 'M': 12.99, 'L': 15.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_PIZPH.jpg", ingredients: ['Mushrooms', 'Green Peppers', 'Onions', 'Philly Steak', 'American Cheese', 'Shredded Provolone Cheese']);
Item.create(category: pizza, name: "Buffalo Chicken", price: {'S': 9.99, 'M': 13.99, 'L': 16.99}, image: "https://cache.dominos.com/olo/6_93_0/assets/build/market/US/_en/images/img/products/larges/S_PIZBP.jpg", ingredients: ['Hot Buffalo Sauce', 'Chicken', 'Onions', 'American Cheese', 'Cheddar Cheese', 'Shredded Provolone Cheese']);

# PASTA
Item.create(category: pasta, name: "Chicken Alfredo", price: {'R': 7.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_ALFR.jpg", ingredients: ['Grilled chicken breast', 'Alfredo sauce', 'Penne pasta']);
Item.create(category: pasta, name: "Italian Sausage Marinara", price: {'R': 7.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_MARIN.jpg", ingredients: ['Tomato basil marinara sauce', 'Italian sausage', 'Provolone cheese', 'Penne pasta']);
Item.create(category: pasta, name: "Chicken Carbonara", price: {'R': 7.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_CARB.jpg", ingredients: ['Grilled chicken breast', 'Smoked bacon', 'Onions', 'Mushrooms', 'Penne pasta']);
Item.create(category: pasta, name: "Pasta Primavera", price: {'R': 7.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/S_PRIM.jpg", ingredients: ['Baby spinach', 'Diced tomatoes', 'Mushrooms', 'Onions', 'Penne pasta', 'Alfredo sauce']);

# # DESSERTS
Item.create(category: dessert, name: "Cinnamon Sticks", price: {'R': 6.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_CINNAT.jpg", ingredients: []);
Item.create(category: dessert, name: "Cookie Brownie", price: {'R': 7.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_MRBRWNE.jpg", ingredients: []);
Item.create(category: dessert, name: "Chocolate Lava Cake", price: {'R': 6.99}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_LAVA.jpg", ingredients: []);
Item.create(category: dessert, name: "Apple Pie", price: {'R': 5.99}, image: "https://therecipecritic.com/wp-content/uploads/2019/09/apple-pie-3-300x300.jpg", ingredients: []);

# # DRINKS
Item.create(category: drink, name: "Coke", price: {'R': 2.29}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_COKE.jpg", ingredients: []);
Item.create(category: drink, name: "Diet Coke", price: {'R': 2.29}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_DIET.jpg", ingredients: []);
Item.create(category: drink, name: "Sprite", price: {'R': 2.29}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_SPRITE.jpg", ingredients: []);
Item.create(category: drink, name: "Fanta", price: {'R': 2.29}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_ORAN.jpg", ingredients: []);
Item.create(category: drink, name: "Lemonade", price: {'R': 2.29}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_LEMND.jpg", ingredients: []);
Item.create(category: drink, name: "Bottled Water", price: {'R': 2.29}, image: "https://cache.dominos.com/olo/6_84_2/assets/build/market/US/_en/images/img/products/larges/F_WATER.jpg", ingredients: []);


puts "seeds created"