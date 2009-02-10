= Order Level

Adds order_minimum and order_increment to the Product model as well as adding them as extra fields to the Product administration page.

As an example, setting both to 10 is basically saying "You have to order at least 10 of these and if you want more they have to be ordered in batches of 10" so the customer has to order 10, 20, 30, ... etc.

Enforcing these levels should be part of the "Add To Order" logic which at this point is not implemented. 

An override for <app>/views/product/show.html.erb is included as well as a localization file (config/lang/us-EN.yml) to demonstrate how to display a minimum quantity message to the customer.

