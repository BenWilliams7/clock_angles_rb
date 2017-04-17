class Clockruby
  def hourHand(hour)
    if hour > 12
      hour -= 12
    end
    hour * 30
  end
  def minuteHand(minute)
    minute * 6
  end
  def degrees(time)
    degreesHour = hourHand(time.hour)
    degreesMin = minuteHand(time.min)

    degreesTime = 0

    if degreesHour > degreesMin
      degreesTime = degreesHour - degreesMin
    else
      degreesTime = degreesMin - degreesHour
    end

    if degreesTime > 180
      degreesTime = 360 - degreesTime
    end

    degreesTime

  end
end
