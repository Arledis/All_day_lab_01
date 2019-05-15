class Customer
attr_reader :name, :age
attr_accessor :wallet, :drunkness_level

def initialize(name, wallet, age)
  @name = name
  @wallet = wallet
  @age = age
  @drunkness_level = 0
end


def customer_drunkness_level
  return @drunkness_level
end

def spent_money(drink)
  @wallet -= drink.price
end

def get_drunk(alcohol_level)
  @drunkness_level += alcohol_level
end


end
