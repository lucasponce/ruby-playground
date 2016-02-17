
module Action
  VERY_BAD = 0
  BAD      = 1
  def Action.sin(badness)
    if badness.nil?
      return "Good"
    elsif badness == VERY_BAD
      return "Ouch, very, very bad"
    elsif badness == BAD
      return "That was bad"
    else
      return "I don't know"
    end
  end
end