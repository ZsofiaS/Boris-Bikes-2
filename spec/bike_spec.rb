require 'bike'
 
describe Bike do
  it 'return true to working method' do
    expect(Bike.new).to respond_to(:working?)
  end
end
