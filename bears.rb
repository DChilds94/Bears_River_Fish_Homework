class Bear
  def initialize(name, stomach)
    @name = name
    @stomach = stomach
  end
  def name()
    return @name
  end

  def fish_in_stomach()
    return @stomach.count
  end

  def hunt(river)
    if river.total_fish > 0
      @stomach.push("fish")
    end
  end
end
