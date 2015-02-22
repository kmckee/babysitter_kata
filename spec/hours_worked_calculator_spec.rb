require 'spec_helper'

describe HoursWorkedCalculator do
  subject { HoursWorkedCalculator.new }
  it 'returns 1 for an exact hour difference' do
    actual_hours = subject.hours_between('5:00pm'.to_t, '6:00pm'.to_t)
    expect(actual_hours).to eql 1
  end
  it 'returns 2 for an exact 2 hour difference' do
    actual_hours = subject.hours_between('5:00pm'.to_t, '7:00pm'.to_t)
    expect(actual_hours).to eql 2
  end
  it 'rounds down for 29 minutes' do
    actual_hours = subject.hours_between('5:00pm'.to_t, '5:29pm'.to_t)
    expect(actual_hours).to eql 0
  end
  it 'rounds up for 30 minutes' do
    actual_hours = subject.hours_between('5:00pm'.to_t, '5:30pm'.to_t)
    expect(actual_hours).to eql 1
  end
end
