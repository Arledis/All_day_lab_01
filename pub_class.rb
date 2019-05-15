class Pub
attr_reader :name
attr_accessor :till, :drinks

def initialize(name, till, drinks)
  @name = name
  @till = till
  @drinks = drinks
end

def pass_age_limit(customer)
    if customer >= 18
      return true
    else
      return false
    end
end

def pub_total_drinks
  return @drinks.size()
end

# def customer_try_to_buy(customer, drink)
# if pass_age_limit(customer.age) == true && customer.drunkness_level < 12
# pub_sold_drink(customer, drink)
# return "What get u?"
# else
#     return "Refuse service"
#   end
#   end




def pub_sold_drink(customer, drink)
    @drinks.delete(drink)
    @till += drink.price
    customer.get_drunk(drink.alcohol_level)
    customer.spent_money(drink)
  end

  def customer_try_to_buy(customer, drink)
  if pass_age_limit(customer.age) == true && customer.drunkness_level < 12
  pub_sold_drink(customer, drink)
  return "What get u?"
  else
      return "Refuse service"
    end
    end

end
