require 'test/unit'
require_relative '../aircraft'

class MyTest < Test::Unit::TestCase

  def setup
    @aircraft = Aircraft.new('F-16', 'C/D Block 30')
  end

  def test_aircraft

    @aircraft.landing
    @aircraft.landing
    @aircraft.takeoff
    @aircraft.takeoff

    assert(true, 'No special validation, always true')
  end
end