class Calculator
  attr_accessor :bedtime, :rate_before_bedtime, :rate_after_bedtime
  def initialize(hours_calculator = nil)
    @hours_calculator = hours_calculator || HoursWorkedCalculator.new
  end

  def get_cost_for(start_time, end_time)
    elapsed_hours = @hours_calculator.hours_between(start_time, end_time)
    total = rate_before_bedtime * elapsed_hours
  end
end
