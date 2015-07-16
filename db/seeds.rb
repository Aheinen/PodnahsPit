#### Menus ####

#1
Menu.create(name: "Breakfast", time_served: "9am - 1pm (Saturday & Sunday only)")

#2
Menu.create(name: "Lunch and Dinner", time_served: "11am to 9pm")

#### Courses ####

#1
Course.create(name: "Breakfast Plates")

#2
Course.create(name: "Appetizers")

#3
Course.create(name: "Dinner Plates")

#4
Course.create(name: "Sandwiches")

#5
Course.create(name: "Dinner Sides")

#6
Course.create(name: "Desserts")

#### Breakfast ####

#1
Meal.create(name: "Podnah's Buttermilk Biscuits and Gravy", description: "Buttermilk biscuits and gravy with 2 eggs", price: "8.75", course_id: 1, menu_id: 1)

#2
Meal.create(name: "Podnah's Breakfast", description: "2 eggs, potatoes or grits and a biscuit", price: "9.00", course_id: 1, menu_id: 1)

#3
Meal.create(name: "Kyle's Breakfast", description: "Smoked Brisket with 2 eggs, potatoes and a biscuit", price: "11.75", course_id: 1, menu_id: 1)

#4
Meal.create(name: "House Smoked Trout Hash", description: "House smoked trout hash with 2 eggs", price: "10.50", course_id: 1, menu_id: 1)

#5
Meal.create(name: "Bob's Steel-cut Oatmeal", description: "Bob's steel-cut oatmeal with pecans, cream and homemade jam", price: "7.00", course_id: 1, menu_id: 1)

#6
Meal.create(name: "Chilaquiles Rojos", description: "Corn tortillas, peppers, onions, & chicken cooked in chimayo chile sauce and served with 2 eggs & refried beans", price: "10.50", course_id: 1, menu_id: 1)

#7
Meal.create(name: "Huevos Rancheros", description: "2 eggs over easy on corn tortillas with ranchero sauce, potatoes and refried beans", price: "9.50", course_id: 1, menu_id: 1)

#8
Meal.create(name: "Migas", description: "2 eggs scrambled with fried corn tortilla strips, peppers, onions, cheddar cheese,
avocado and served with potatoes, refried beans, tortillas and salsa", price: "9.50", course_id: 1, menu_id: 1)

#9
Meal.create(name: "Breakfast Tacos", description: " 2 tacos per order, choose: Homemade chorizo, potato, egg, pepper & onion, cheddar cheese and salsa or Potato, egg, pepper & onion, cheddar cheese and salsa", price: "9.00", course_id: 1, menu_id: 1)

#10
Meal.create(name: "Biscuit Basket", description: "Podnah’s Buttermilk Biscuits (3) with
butter and homemade jam", price: "6.00", course_id: 1, menu_id: 1)

#### Dinner ####

#11
Meal.create(name: "Creekstone Farms Brisket", description: "Creekstone farms brisket smoked 10hrs", price: "17.00", course_id: 3, menu_id: 2)

#12
Meal.create(name: "Brian’s Pulled Pork", description: "Brian’s pulled pork smoked 12hrs & tossed in spicy vinegar sauce", price: "15.50", course_id: 3, menu_id: 2)

#13
Meal.create(name: "Mary’s Free Range Smoked 1/2 Chicken", description: "Mary’s free range smoked 1/2 chicken", price: "17.00", course_id: 3, menu_id: 2)

#14
Meal.create(name: "Smoked Whole Ruby Trout", description: "Smoked whole ruby trout", price: "17.00", course_id: 3, menu_id: 2)

#15
Meal.create(name: "Plato Tejano", description: "Sliced smoked brisket with pinto beans, salsa, and tortillas", price: "16.25", course_id: 3, menu_id: 2)

#16
Meal.create(name: "The Pitboss", description: "1/4lb brisket, 1/4lb pulled pork, 2 pork ribs, 1 sausage link, cornbread & choice of 2 sides", price: "24.00", course_id: 3, menu_id: 2)

#17
Meal.create(name: "Chopped Brisket Sandwich", description: "Chopped brisket sandwich", price: "11.50", course_id: 4, menu_id: 2)

#18
Meal.create(name: "Brian's Pulled Pork Sandwich", description: "Brian's pulled pork sandwich", price: "11.75", course_id: 4, menu_id: 2)

#19
Meal.create(name: "Sliced Smoked Brisket Sandwich", description: "Sliced smoked brisket sandwich", price: "12.50", course_id: 4, menu_id: 2)

#### Sides ####

#20
Meal.create(name: "Potato Salad", description: "Potato salad", price: "3.00", course_id: 5, menu_id: 2)

#21
Meal.create(name: "BBQ Beans", description: "BBQ beans", price: "3.00", course_id: 5, menu_id: 2)

#22
Meal.create(name: "Coleslaw", description: "Coleslaw", price: "3.00", course_id: 5, menu_id: 2)

#23
Meal.create(name: "Black-Eyed Pea Salad", description: "Black-eyed pea salad (texas caviar)", price: "3.00", course_id: 5, menu_id: 2)

#24
Meal.create(name: "Collard Greens", description: "Collard greens", price: "3.00", course_id: 5, menu_id: 2)

#### Appetizers ####

#25
Meal.create(name: "Chips and Salsa", description: "Chips and salsa", price: "3.25", course_id: 2, menu_id: 2)

#26
Meal.create(name: "Texas Red", description: "All meat chili with cornbread", price: "4.00", course_id: 2, menu_id: 2)

#27
Meal.create(name: "Frito Pie", description: "Texas Red, cheese and onion over fritos", price: "6.25", course_id: 2, menu_id: 2)

#28
Meal.create(name: "Iceburg Wedge", description: "Iceburg wedge wit Podnah’s blue cheese, thousand island, or ranch", price: "6.50", course_id: 2, menu_id: 2)

#29
Meal.create(name: "Tex Cobb", description: "Romaine, pico de gallo, bacon, blue, green onion, avocado, egg & brisket, choice of Podnah’s blue cheese, thousand island, or ranch", price: "12.25", course_id: 2, menu_id: 2)

#### Desserts ####

#30
Meal.create(name: "Pecan Pie", description: "Pecan pie with cold whoop", price: "5.50", course_id: 6, menu_id: 2)

#31
Meal.create(name: "Banana Pudding", description: "Banana pudding", price: "5.50", course_id: 6, menu_id: 2)






