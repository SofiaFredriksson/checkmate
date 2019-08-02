Item.destroy_all
Bill.destroy_all
Customer.destroy_all


b1 = Bill.create(restaurant_name: 'Nandos', total_price: 34.6, service_charge: 12.5)

c1 = Customer.create(name: 'Sofia')
c2 = Customer.create(name: 'Sarah')

i1 = Item.create(name: 'Chips', price: 2.5, customer: c1, bill: b1)
i1 = Item.create(name: 'Steak', price: 17, customer: c1, bill: b1)
i1 = Item.create(name: 'Salad', price: 5, customer: c2, bill: b1)
i1 = Item.create(name: 'Rib-Eye', price: 2.5, customer: c2, bill: b1)


