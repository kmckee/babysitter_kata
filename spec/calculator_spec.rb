require 'spec_helper'

describe Calculator do
  let(:five_pm) { Time.parse('5:00pm') }
  let(:six_pm) { Time.parse('6:00pm') }
  let(:seven_pm) { Time.parse('7:00pm') }
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
  it 'can calculate a total for 1 hour before bedtime' do
    subject.rate_before_bedtime = BigDecimal.new('12.00')
    total = subject.get_cost_for(five_pm, six_pm)
    expect(total).to eql (12 * 1)
  end
  it 'can calculate a total for 2 hours before bedtime' do
    subject.rate_before_bedtime = BigDecimal.new('12.00')
    total = subject.get_cost_for(five_pm, seven_pm)
    expect(total).to eql (12 * 2)
  end
  it 'respects different rates' do
    subject.rate_before_bedtime = BigDecimal.new('18.00')
    total = subject.get_cost_for(five_pm, six_pm)
    expect(total).to eql (18 * 1)
  end
end
