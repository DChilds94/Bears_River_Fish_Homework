require("minitest/autorun.rb")
require("minitest/rg")

require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

  def setup()
    fish = ["Tuna", "Salmon", "Crayfish"]
    @river = River.new("Severn", fish)
  end
  def test_name()
    assert_equal("Severn", @river.name)
  end

  def test_fish()
    assert_equal(["Tuna", "Salmon", "Crayfish"], @river.fish)
  end
end
