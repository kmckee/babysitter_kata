require 'spec_helper'

describe HoursWorkedCalculator do
  let(:five_pm) { Time.parse('5:00pm') }
  let(:six_pm) { Time.parse('6:00pm') }
  let(:seven_pm) { Time.parse('7:00pm') }
  subject { HoursWorkedCalculator.new }
  it 'returns 1 for an exact hour difference' do
    actual_hours = subject.hours_between(five_pm, six_pm)
    expect(actual_hours).to eql 1
  end
  it 'returns 2 for an exact 2 hour difference' do
    actual_hours = subject.hours_between(five_pm, seven_pm)
    expect(actual_hours).to eql 2
  end
  it 'rounds down for 29 minutes' do
    actual_hours = subject.hours_between(Time.parse('5:00pm'), Time.parse('5:29pm'))
    expect(actual_hours).to eql 0
  end
  it 'rounds up for 30 minutes' do
    actual_hours = subject.hours_between(Time.parse('5:00pm'), Time.parse('5:30pm'))
    expect(actual_hours).to eql 1
  end
end
