require 'spec_helper'

describe Calculator do
  subject { Calculator.new }
  it 'knows the bedtime' do
    time = Time.now
    subject.bedtime = time
    expect(subject.bedtime).to eql time
  end
end
