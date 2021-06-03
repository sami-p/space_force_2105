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
end
