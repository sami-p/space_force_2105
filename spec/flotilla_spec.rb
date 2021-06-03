require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do
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
