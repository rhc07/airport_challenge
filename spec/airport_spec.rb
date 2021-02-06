require "airport"

describe Airport do
 it "Airport responds to land" do
 	airport = Airport.new
 	expect(airport).to respond_to(:land).with(1).argument
 end
 it "Airport responds to plane" do
 	airport = Airport.new
 	plane = Plane.new
 	expect(airport).to respond_to(:plane)
 end
 it "Airport lands the plane" do
 	airport = Airport.new
 	plane = Plane.new
 	expect(airport.land(plane)).to eq plane
 end
 it "Airport returns a plane when called" do
 	airport = Airport.new
 	plane = Plane.new
 	airport.land(plane)
 	expect(airport.plane).to eq plane
 end
 it "Airport responds to take_off" do
 	airport = Airport.new
 	expect(airport).to respond_to(:take_off).with(1).argument
 end
 # it "should update the hangar report when plane has taken off" do
 # 	airport = Airport.new
 # 	plane = Plane.new
 # 	airport.land(plane)
 # 	airport.plane
 # 	expect(airport.plane.take_off).to 
 #we need to show that a plane has taken off and is no longer present in the airport

 # it "Plane takes off from airport" do
 # 	airport = Airport.new
 # 	plane = Plane.new
 # 	expect(airport.take_off(plane)).
end

describe Plane do

end