require './lib/person'
require './lib/spacecraft'

RSpec.describe Spacecraft do
  describe '#initialize' do
    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus).to be_an_instance_of(Spacecraft)
    end

    it 'has attributes' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.name).to eq('Daedalus')
      expect(daedalus.fuel).to eq(400)
    end

    it 'starts with empty array of requirements' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus.requirements).to eq([])
    end
  end

  describe 'Spacecraft methods' do
    it 'can add requirement' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      daedalus.add_requirement({astrophysics: 6})
      daedalus.add_requirement({quantum_mechanics: 3})

      expect(daedalus.requirements).to eq([{astrophysics: 6}, {quantum_mechanics: 3}])
    end
  end
end
