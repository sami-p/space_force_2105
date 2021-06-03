require './lib/person'

RSpec.describe Person do
  describe '#initialize' do
    it 'exists' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy).to be_an_instance_of(Person)
    end

    it 'has attributes' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.name).to eq('Kathy Chan')
      expect(kathy.experience).to eq(10)
    end

    it 'starts with empty array of specialties' do
      kathy = Person.new('Kathy Chan', 10)

      expect(kathy.specialties).to eq([])
    end
  end

  describe 'Person methods' do
    it 'can add a speciality to specialties array' do
      kathy = Person.new('Kathy Chan', 10)

      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)

      expect(kathy.specialties).to eq([:astrophysics, :quantum_mechanics])
    end
  end
end
