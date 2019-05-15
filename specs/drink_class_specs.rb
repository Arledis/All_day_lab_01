require('minitest/autorun')
require('minitest/rg')
require_relative('../drink_class.rb')

class TestDrink < MiniTest::Test
def setup
  @drink1 = Drink.new("bud", 4.0, "4%")
end


def test_drink_has_name
  assert_equal("bud", @drink1.name)
end

def test_drink_has_price
  assert_equal(4.0, @drink1.price)
end

def test_drink_has_alcohol_level
  assert_equal("4%", @drink1.alcohol_level)
end

end
