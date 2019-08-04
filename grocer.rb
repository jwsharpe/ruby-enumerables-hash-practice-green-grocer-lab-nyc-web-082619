def consolidate_cart(cart)
  consolidated_cart = Hash.new
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
  # code here
end

def checkout(cart, coupons)
  # code here
end
