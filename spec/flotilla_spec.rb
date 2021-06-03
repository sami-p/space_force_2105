require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do
  describe '#initialize' do
    it 'exists' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla).to be_an_instance_of(Flotilla)
    end

    it 'has a name' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.name).to eq('Seventh Flotilla')
    end

    it 'starts with empty array of personnel' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.personnel).to eq([])
    end

    it 'starts with empty array of ships' do
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      expect(seventh_flotilla.ships).to eq([])
    end
  end

  describe 'Flotilla methods' do
    it 'can add a ship' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

      seventh_flotilla.add_ship(daedalus)

      expect(seventh_flotilla.ships).to eq([daedalus])
    end

    it 'can add personnel' do
      kathy = Person.new('Kathy Chan', 10)
      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)

      polly = Person.new('Polly Parker', 8)
      polly.add_specialty(:operations)
      polly.add_specialty(:maintenance)

      rover = Person.new('Rover Henriette', 1)
      rover.add_specialty(:operations)
      rover.add_specialty(:maintenance)

      sampson = Person.new('Sampson Edwards', 7)
      sampson.add_specialty(:astrophysics)
      sampson.add_specialty(:quantum_mechanics)

      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
      seventh_flotilla.add_personnel(kathy)
      seventh_flotilla.add_personnel(polly)
      seventh_flotilla.add_personnel(rover)
      seventh_flotilla.add_personnel(sampson)

      expect(seventh_flotilla.personnel).to eq([kathy, polly, rover, sampson])
    end

    it 'can recommend personnel to a ship' do
      kathy = Person.new('Kathy Chan', 10)
      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)

      polly = Person.new('Polly Parker', 8)
      polly.add_specialty(:operations)
      polly.add_specialty(:maintenance)

      rover = Person.new('Rover Henriette', 1)
      rover.add_specialty(:operations)
      rover.add_specialty(:maintenance)

      sampson = Person.new('Sampson Edwards', 7)
      sampson.add_specialty(:astrophysics)
      sampson.add_specialty(:quantum_mechanics)

      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})

      seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
      seventh_flotilla.add_ship(daedalus)
      seventh_flotilla.add_personnel(kathy)
      seventh_flotilla.add_personnel(polly)
      seventh_flotilla.add_personnel(rover)
      seventh_flotilla.add_personnel(sampson)

      expect(seventh_flotilla.recommend_personnel(daedalus)). to eq([kathy, sampson])
    end
  end
end
