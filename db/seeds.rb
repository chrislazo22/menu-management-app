MenuItem.delete_all
Order.delete_all
OrderItem.delete_all
User.delete_all

MenuItem.create! id: 1,
                  name: "Mozzarella Sticks",
                  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                  category: "Appetizer",
                  price: 5.00
MenuItem.create! id: 2,
                  name: "Seared Ahi Tuna Steak",
                  description: "Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate",
                  category: "Main Course",
                  price: 10.00
MenuItem.create! id: 3,
                  name: "Tater Tots",
                  description: "Velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt",
                  category: "Side Dish",
                  price: 7.00

MenuItem.create! id: 4,
                  name: "Cheese Cake",
                  description: "Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae",
                  category: "Dessert",
                  price: 3.00

User.create!(email: "admin@admin.com", password: "asdfasdf", password_confirmation: "asdfasdf")

puts "Created menu items"
puts "Created User"
