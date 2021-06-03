require './lib/spacecraft'
require './lib/person'
require './lib/flotilla'

RSpec.describe Flotilla do
  it 'exists' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla).to be_an_instance_of(Flotilla)
  end
end
