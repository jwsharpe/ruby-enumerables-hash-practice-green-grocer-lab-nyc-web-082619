def consolidate_cart(cart)
  consolidated_cart = []]
  for item in cart do
    item_key	= item.keys[0]
	  item_values = item.values[0]
	  
	  if !consolidated_cart[item_key]
      item_values[:count] = 1
	    consolidated_cart[item_key] = item_values
  	else
	    consolidated_cart[item_key][:count] += 1
  	end
  end
  return consolidated_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  cart.each do |key, value|
    if cart[key][:clearance]
      cart[key][:price] = (0.8 * cart[key][:price]).round(2)
    end
  end
end

def checkout(cart, coupons)
  # code here
end
