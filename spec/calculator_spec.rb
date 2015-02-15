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
end
