require 'spec_helper'

describe Calculator do
  it 'knows the bedtime' do
    subject = Calculator.new
    time = Time.now
    subject.bedtime = time
    expect(subject.bedtime).to eql time
  end
end
