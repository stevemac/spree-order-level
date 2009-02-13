= Order Level

Adds order_minimum and order_increment to the Product model as well as adding them as extra fields to the Product administration page.

As an example, setting both to 10 is basically saying "You have to order at least 10 of these and if you want more they have to be ordered in batches of 10" so the customer has to order 10, 20, 30, ... etc.

This extensions migration add order_minimum and order_increment columns to the products table and add a comment column to the line_items table. 

An override for <spree app>/views/product/show.html.erb is included  to demonstrate how to display a minimum quantity message to the customer.

An override for <spree app>/views/orders/_line_item.html.erb is included to demonstrate the display of line_item.comment when an adjustment is made to the order quantity.

A localization file (config/lang/us-EN.yml) which includes the English version of all localization tags in thie extension.
