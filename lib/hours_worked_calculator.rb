class HoursWorkedCalculator
  NUMBER_OF_SECONDS_IN_AN_HOUR = 3600
  def hours_between(start_time, end_time)
    elapsed_time_in_seconds = end_time - start_time
    elapsed_hours = elapsed_time_in_seconds / NUMBER_OF_SECONDS_IN_AN_HOUR
    elapsed_hours.round
  end
end
