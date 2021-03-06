require 'spec_helper'

describe Calculator do
  let(:arbitrary_time) { '5:00pm'.to_t }
  let(:hours_mock) { double('hours_mock') }
  def set_hours_worked hours
    allow(hours_mock).to receive(:hours_between).and_return(hours)
  end
  def set_rate rate
    subject.rate_before_bedtime = BigDecimal.new(rate.to_s)
  end
  
  subject { Calculator.new(hours_mock) }
  
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
  it 'can calculate a total for 1 hour before bedtime' do
    set_rate(12)
    set_hours_worked(1)
    total = subject.get_cost_for(arbitrary_time, arbitrary_time)
    expect(total).to eql (12 * 1)
  end
  it 'can calculate a total for 2 hours before bedtime' do
    set_rate(12)
    set_hours_worked(2)
    total = subject.get_cost_for(arbitrary_time, arbitrary_time)
    expect(total).to eql (12 * 2)
  end
  it 'respects different rates' do
    set_rate(18)
    set_hours_worked(1)
    total = subject.get_cost_for(arbitrary_time, arbitrary_time)
    expect(total).to eql (18 * 1)
  end
end

