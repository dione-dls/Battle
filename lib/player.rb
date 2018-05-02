class Player
  DEFAULT_HEALTH = 100

  attr_reader :name, :health

  def initialize(name)
    @name = name
    @health = DEFAULT_HEALTH
  end
end
