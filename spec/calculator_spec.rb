require 'spec_helper'

describe Calculator do
  subject { Calculator.new }
  it 'knows the bedtime' do
    time = Time.now
    subject.bedtime = time
    expect(subject.bedtime).to eql time
  end
  it 'knows the rate before bedtime' do
    rate = BigDecimal.new('12.00')
    subject.rate_before_bedtime = rate
    expect(subject.rate_before_bedtime).to eql rate
  end
  it 'can calculator a total for 1 hour before bedtime' do
    hourly_rate = 12
    subject.rate_before_bedtime = hourly_rate
    arbitrary_start_time = Time.parse('5:00pm')
    arbitrary_end_time = Time.parse('6:00pm')
    total = subject.get_cost_for(arbitrary_start_time, arbitrary_end_time)
    expect(total).to eql (hourly_rate * 1)
  end
end
