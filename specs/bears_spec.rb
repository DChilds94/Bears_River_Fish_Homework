require("minitest/autorun.rb")
require("minitest/rg")

require_relative("../bears.rb")
require_relative("../fish.rb")
require_relative("../river.rb")


class TestBear < MiniTest::Test
  def setup()
    stomach = []
    @bear = Bear.new("Paddington", stomach)
  end

  def test_name()
    assert_equal("Paddington", @bear.name)
  end

  def test_fish_in_stomach
    assert_equal(0, @bear.fish_in_stomach)
  end
# this is for bear's food count
  def test_hunt__success()
    river = River.new("Nile", ["Tuna", "Shark"])
    @bear.hunt(river)
    assert_equal(1, @bear.fish_in_stomach)
  end
end
