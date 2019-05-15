require('minitest/autorun')
require('minitest/rg')
require_relative('../pub_class.rb')
require_relative('../drink_class.rb')
require_relative('../customer_class.rb')

class TestPub < MiniTest::Test
def setup
@customer1 = Customer.new("Joe", 500, 22)
@drink1 = Drink.new("bud", 4.0, 4)
@drink2 = Drink.new("bud", 4.0, 4)
@drink3 = Drink.new("bud", 4.0, 4)
@drink4 = Drink.new("bud", 4.0, 4)
@drink5 = Drink.new("cider", 4.0, 4)
@drinks = [@drink1, @drink2, @drink3, @drink4, @drink5]
@pub = Pub.new("Howlin' Wolf", 1000, @drinks)
end

def test_pub_has_name
  assert_equal("Howlin' Wolf", @pub.name)
end

def test_pass_age_limit
  assert_equal(true, @pub.pass_age_limit(@customer1.age))
end

def test_pub_total_drinks
  assert_equal(5, @pub.drinks.size())
end

def test_till_total_cash
  assert_equal(1000, @pub.till)
end


def test_pub_sold_drink
  @pub.pub_sold_drink(@customer1, @drink2)
  assert_equal(4, @pub.drinks.size())
  assert_equal(1004, @pub.till)
  assert_equal(4, @customer1.drunkness_level)
  assert_equal(496, @customer1.wallet)
end

def test_customer_try_to_buy
  @pub.customer_try_to_buy(@customer1, @drink1)
  @pub.customer_try_to_buy(@customer1, @drink3)
  @pub.customer_try_to_buy(@customer1, @drink4)
  @pub.customer_try_to_buy(@customer1, @drink5)
  assert_equal(12, @customer1.drunkness_level())
  assert_equal("Refuse service", @pub.customer_try_to_buy(@customer1, @drink2))
end

end
