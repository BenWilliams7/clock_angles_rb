require "rspec"
require "./clock"

describe "clockruby#hourHand" do
  givenTime = Clockruby.new
  it("returns a degree when given an hour") do
    expect(givenTime.hourHand(6)).to(eq(180))
  end
end
describe "clockruby#minuteHand" do
  givenTime = Clockruby.new
  it("returns a degree when given a minute") do
    expect(givenTime.minuteHand(6)).to(eq(36))
  end
end
describe "clockruby#degrees" do
  givenTime = Clockruby.new
  it("returns a degree when given a time") do
    expect(givenTime.degrees(Time.utc(2000,"jan",1,20,15,1))).to(eq(150))
  end
  it("returns the smaller degree when given a time") do
    expect(givenTime.degrees(Time.utc(2000,"jan",1,20,0,1))).to(eq(120))
  end
end
