require "rspec"
require "./clock"

describe "clockruby#hourHand" do
  givenTime = Clockruby.new
  it("returns a degree when given an hour") do
    expect(givenTime.hourHand(6)).to(eq("180˚"))
  end
end
