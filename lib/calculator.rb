class Calculator
  attr_accessor :bedtime, :rate_before_bedtime
  def initialize
    @hours_calculator = HoursWorkedCalculator.new
  end

  def get_cost_for(start_time, end_time)
    elapsed_hours = @hours_calculator.hours_between(start_time, end_time)
    total = rate_before_bedtime * elapsed_hours
  end
end

class HoursWorkedCalculator
  NUMBER_OF_SECONDS_IN_AN_HOUR = 3600
  def hours_between(start_time, end_time)
    elapsed_time_in_seconds = end_time - start_time
    elapsed_hours = elapsed_time_in_seconds / NUMBER_OF_SECONDS_IN_AN_HOUR
  end
end
