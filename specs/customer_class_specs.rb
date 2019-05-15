require('minitest/autorun')
require('minitest/rg')
require_relative('../customer_class.rb')
require_relative('../drink_class.rb')

class TestCustomer < MiniTest::Test
def setup
  @customer1 = Customer.new("Joe", 500, 22)
  @drink = Drink.new("bud", 4.0, 4)

end

def test_customer_has_name
  assert_equal("Joe", @customer1.name)
end

def test_customer_has_age
  assert_equal(22, @customer1.age)
end

def test_customer_has_wallet
  assert_equal(500, @customer1.wallet)
end

def test_customer_drunkness_level
  assert_equal(0, @customer1.drunkness_level)
end


def test_customer_spent_money
  @customer1.spent_money(@drink)
  assert_equal(496, @customer1.wallet)
end

def test_customer_get_drunk
  @customer1.get_drunk(@drink.alcohol_level)
  assert_equal(4, @customer1.drunkness_level)
end
end
