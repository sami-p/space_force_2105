class Flotilla
  attr_reader :name,
              :personnel

  def initialize(info)
    @name = info[:designation]
    @personnel = []
  end
end
