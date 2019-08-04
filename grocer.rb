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
  for coupon in coupons do
    coupon_key = coupon.keys[0]
    if(!cart(coupon_key))
      if(cart(coupon_key)[:count]>=coupon_key[:num])
        discount_price = 
        
        cart(coupon_key)[:count] -= coupon_key[:num]
        
        cart("#{coupon_key} W/COUPON") = {:price =
end

def apply_clearance(cart)
  cart.each do |key, value|
    if cart[key][:clearance]
      cart[key][:price] = (0.8 * cart[key][:price]).round(2)
    end
  end
end

def checkout(cart, coupons)
  cart = consolidate_cart(cart)
  cart = apply_coupons(cart, coupons)
  cart = apply_clearance(cart)
  
  sum = 0
  cart.each do |key, value|
    sum += (cart[key][:price] * cart[key][:count])
  end
  
  sum >= 100 ? sum = 0.9*sum : nil
  
  return sum
end
