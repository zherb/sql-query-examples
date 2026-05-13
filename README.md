# sql-query-examples

# baseball_analytics
Prompt: Write a SQL query that returns the average fastball velocity by team for left-handed pitchers. Pitchers included in the query must have thrown at least 100 total pitches.

Schema: 
table: team
- team_id / integer / unique id number for each team
- team_name / string / the name of the team

table: pitches
- pitcher_id / integer / unique id number for each pitcher + corresponds to player id
- pitch_type / string / type of pitch
- velocity / float / speed of pitch

# swapped_food_delivery
Due to an error in the delivery driver instructions, each item's order was swapped with the item in the subsequent row. If the last item has an odd order ID, it should remain as the last item in the corrected data. In the results, return the correct pairs of order IDs and items.

Schema: 
table: orders
- order_id	/ integer	/ the ID of each order.
- item	/ string	/ the name of the food item in each order.

# three_topping_pizza
Given a list of pizza toppings, consider all the possible 3-topping pizzas, and print out the total cost of those 3 toppings. Sort the results with the highest total cost on the top followed by pizza toppings in ascending order.

- Break ties by listing the ingredients in alphabetical order, starting from the first ingredient, followed by the second and third.
- Do not display pizzas where a topping is repeated. For example, ‘Pepperoni,Pepperoni,Onion Pizza’.
- Ingredients must be listed in alphabetical order. For example, 'Chicken,Onions,Sausage'. 'Onion,Sausage,Chicken' is not acceptable.

Schema: 
table: pizza_toppings
- topping_name / string / name of the topping
- ingredient_cost / float / price of that individual ingredient
