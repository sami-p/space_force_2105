class Flotilla
  attr_reader :name,
              :personnel,
              :ships

  def initialize(info)
    @name = info[:designation]
    @personnel = []
    @ships = []
  end

  def add_ship(ship)
    @ships << ship
  end

  def add_personnel(person)
    @personnel << person
  end

  def match_requirements(ship)
    @personnel.find_all do |person|
      person.specialties.each do |speciality|
        ship.requirements.include?(speciality)
      end
    end
  end

  def experience_level(ship)
    rec_personnel = []
    match_requirements(ship).each do |person|
      ship.requirements.any? { requirement.has_value? <= person.experience }
        rec_personnel << person
      end 
    end
    rec_personnel
  end

  def recommend_personnel(ship)
    match_requirements(ship) && experience_level(ship)
  end
end
