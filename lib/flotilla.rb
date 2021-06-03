class Flotilla
  attr_reader :name
  
  def initialize(info)
    @name = info[:designation]
  end
end
