require 'test/unit'
require_relative '../trig'
require_relative '../action'

class MyTest < Test::Unit::TestCase

  def test_sin
    x = Trig.sin(100)
    status = Action.sin(Action::VERY_BAD)

    puts "Trig.sin(x) #{x}"
    puts "Action.sin(badness) #{status}"

    assert(true, 'Not really tested')
  end

end
