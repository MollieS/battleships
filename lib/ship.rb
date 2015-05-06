class Ship

  attr_reader :length
  attr_accessor :orientation

  DEFAULT_LENGTH = 1

  def initialize length = DEFAULT_LENGTH
    @length = length
    @orientation = 'v'
  end

end