require("minitest/autorun.rb")
require("minitest/rg")

require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Tuna")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Crayfish")
    fish_in_river = [@fish1, @fish2, @fish3]
    @river = River.new("Severn", fish_in_river)
  end

  def test_name()
    assert_equal("Severn", @river.name)
  end

  def test_fish()
    assert_equal(["Tuna", "Salmon", "Crayfish"], @river.fish_in_river)
  end

  def test_remove_fish
    assert_equal(["Tuna", "Salmon", "Crayfish"], @river.fish)
  end

  def test_total_fish()
    assert_equal(3, @river.total_fish)
  end
end
