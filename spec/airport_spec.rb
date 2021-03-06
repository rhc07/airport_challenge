require "airport"
require "Plane"

describe Airport do
	it "has a default capacity" do 
		airport = Airport.new
		expect(airport.capacity).to eq Airport::DEFAULT_CAPACITY
	end

 describe '#initialization' do 
  it "has a variable capacity" do
  	airport = Airport.new
  	airport.capacity = 50
    allow(airport).to receive(:forecast) {:sunny}
  	50.times {airport.land Plane.new}
    allow(airport).to receive(:forecast) {:sunny}
  	expect {airport.land Plane.new}.to raise_error 'Airport is full: cannot land right now.'
  end
 

 describe '#land' do	
 it "Airport responds to land" do
 	airport = Airport.new
 	expect(airport).to respond_to(:land).with(1).argument
 end
 # it "Airport responds to plane" do
 # 	airport = Airport.new
 # 	plane = Plane.new
 # 	expect(airport).to respond_to(:plane)
 # end
 it "Airport lands the plane" do
 	airport = Airport.new
 	plane = Plane.new
  allow(airport).to receive(:forecast) {:sunny}
 	expect(airport.land(plane)).to eq [plane]
 end
 it "raises an error when airport is full" do
 	airport = Airport.new
 	plane = Plane.new
  allow(airport).to receive(:forecast) {:sunny}
 	airport.capacity.times {airport.land(Plane.new)}
  allow(airport).to receive(:forecast) {:sunny}
 	# Airport::DEFAULT_CAPACITY.times do
 	# 	airport.land(Plane.new)
 	# end
 	# 20.times {airport.land(Plane.new)}
 	expect {airport.land Plane.new}.to raise_error 'Airport is full: cannot land right now.'
 end
  it "Cannot land when weather is stormy" do
  airport = Airport.new
  plane = Plane.new
   allow(airport).to receive(:forecast) {:stormy}
    expect {airport.land Plane.new}.to raise_error 'Weather is stormy, cannot land.'
    end
   end
 # it "Airport returns a plane when called" do
 # 	airport = Airport.new
 # 	plane = Plane.new
 # 	airport.land(plane)
 # 	expect(airport.plane).to eq [plane]
 # end

end
describe '#take_off' do
 it "Airport responds to take_off" do
 	airport = Airport.new
 	plane = Plane.new
 	allow(airport).to receive(:forecast) {:sunny}
  airport.land(plane)
 	expect(airport).to respond_to(:take_off).with(1).argument
 end
 it "should return updated hangar report when plane has taken off" do
 	airport = Airport.new
 	plane = Plane.new
 	allow(airport).to receive(:forecast) {:sunny}
  airport.land(plane)
 	expect(airport.take_off(plane)).to_not include([plane])
 end
 it "Cannot take-off when weather is stormy" do
  airport = Airport.new
 	plane = Plane.new
  allow(airport).to receive(:forecast) {:sunny}
 	airport.land(plane)
 	 allow(airport).to receive(:forecast) {:stormy}
    expect {airport.take_off(plane)}.to raise_error 'Weather is stormy, cannot take-off.'
    end 
  end  
end
 # it "Plane takes off from airport" do
 # 	airport = Airport.new
 # 	plane = Plane.new
 # 	expect(airport.take_off(plane)).

# describe Weather do
#  describe '#stormy?' do
#   it "Weather responds to stormy?" do	
# 	weather = Weather.new
# 	expect(weather).to respond_to(:weather)
#   end
#   it "Returns a weather report between stormy and sunny." do
#   	weather = Weather.new
#   	expect(weather.weather).not_to be_nil
#   end	
#  end
# end
# I want to prevent takeoff when weather is stormy 



describe Plane do

end