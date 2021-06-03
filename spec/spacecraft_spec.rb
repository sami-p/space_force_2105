require './lib/person'
require './lib/spacecraft'

RSpec.describe Spacecraft do
  describe '#initialize' do
    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})

      expect(daedalus).to be_an_instance_of(Spacecraft)
    end
  end
end
