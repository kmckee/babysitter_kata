class Calculator
  attr_accessor :bedtime, :rate_before_bedtime

  NUMBER_OF_SECONDS_IN_AN_HOUR = 3600
  
  def initialize
  end

  def get_cost_for(start_time, end_time)
    elapsed_time_in_seconds = end_time - start_time
    elapsed_hours = elapsed_time_in_seconds / NUMBER_OF_SECONDS_IN_AN_HOUR
    total = 12 * elapsed_hours
  end
end
