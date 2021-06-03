require './lib/person'

RSpec.describe Person do
  describe '#initialize' do
    it 'exists' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy).to be_an_instance_of(Person)
    end
  end
end
