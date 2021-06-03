class Spacecraft
  attr_reader :name,
              :fuel,
              :requirements

  def initialize(info)
    @name = info[:name]
    @fuel = info[:fuel]
    @requirements = []
  end
end
