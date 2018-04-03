class River
  def initialize(name, fish)
    @name = name
    @fish = fish

  end



  def name()
    return @name
  end

  def fish()
    return @river.fish_in_river
  end

  # remove one fish
  # we need to create a method to remove a fish from the array in the river

  # def remove_fish
  #   return @
  # end

  def total_fish()
    return @fish.length.to_i
  end


end
