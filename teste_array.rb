array_teste = [25.4, 35.6, 79.8, 92.75, 15.78]

def total(prices)
  amount = 0
  prices.each do |price|
    amount += price
  end
  amount              
end

def refund(prices)
  amount = 0
  prices.each do |price|
    amount -= price
  end
  amount
end

def show_discounts(prices)
  prices.each do |price|
    amount_off = price / 3.0
    puts format("Your discount: $%.2f", amount_off)
  end
end

puts total(array_teste)
puts refund(array_teste)
show_discounts(array_teste)
