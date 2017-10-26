# Welcome to Cafe TXI

Below is a summary of my approach and methodologies to building this application:

While building the menu management application, my initial thought process centered on what models would need to be created; I chose to create four models for this application. These models were: Menu Item, Order Item, Order and User. The first model I created was the menu item model. I felt it necessary to create this model first because other models would be dependent on the data in this model. I then created the order and order items model. Followed by the user model. After the models were created, I ensured all necessary validations were added.

After building the models, my attention was focused on what controllers I needed to progress with the application. The menu items controller was set up first because this allowed for all the CRUD functionality of the application. Initially, the MenuItemsController#index action was going to be the root page of the application. However, upon further consideration, I created a static controller with a menu action to render the homepage/root path. An order items controller was also generated. This allows for the users to update attributes in the cart; these include the ability to update the quantity and delete a menu item. Lastly the cart controller has a show action for the cart view.

When the user reaches the root path, they will see a menu with four different categories: appetizer, main dish, side dish and dessert. The user can click on the name of the menu item to view the show page. If the user elects to add the item to the cart, the user can do so after selecting a quantity. Once the user has completed his or her order, the link to the cart view can be found in the navigation bar. Once in the cart view, the user has the ability to change the quantity of the menu item or delete it entirely.

I elected to created user model which allows an admin or restaurant owner to manage the application entirely without customer interference. The admin user can click on the Admin link in the navigation bar directing the admin user the menu item index view. Here the admin user has the ability to add, edit update or delete menu items. Only a user with a login can access this area of the application.

Lastly, for the front end of the application, I chose to use the Materialize framework. This allowed me to easily build a responsive and modern looking web application.


## Instructions
Run rake db:seed

This will create an admin user email: admin@admin.com password: asdfasdf

## User Stories (Required)

* A user should be able to enter, edit, and remove menu items. The menu items have a name, a description, a category (such as appetizer, main course, side, dessert), and a price. (Unless you do the optional story, we’re not concerned with user logins or security)

* A user should be able to view the menu, with items grouped by category, and see the names, descriptions, and prices.

* The menu view should allow users to select items off the menu. On submitting the form, they should be able to see the total price of their potential order. A user should be able to adjust the quantity of items in their order.

## User Stories (Optional)

* Restrict the ability to enter, edit, and remove menu items to a logged-in administrator.

* The administrator can optionally upload an image to go along with an item, if so, the image is displayed in the menu

## Other
ruby 2.3.1p112
rails 5.1.4
