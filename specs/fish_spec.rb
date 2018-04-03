require("minitest/autorun.rb")
require("minitest/rg")

# require_relative("../bears.rb")
require_relative("../fish.rb")

class TestFish < MiniTest::Test
  def setup()
    @fish = Fish.new("Tuna")
  end

  def test_name()
    assert_equal("Tuna", @fish.name)
  end
end
