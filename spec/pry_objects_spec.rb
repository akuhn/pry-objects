require 'spec_helper'

describe PryObjects do
  it 'has a version number' do
    expect(PryObjects::VERSION).not_to be nil
  end

  it 'does something useful' do
    command = 'objects "gibberish"'
    expect(pry_eval(command)).to match ["gibberish"]

    command = 'objects 10.times { "gibberish" }'
    expect(pry_eval(command)).to match ["gibberish"] * 10

    command = 'objects :gibberish'
    expect(pry_eval(command)).to match []

    command = 'objects 10.times { :gibberish }'
    expect(pry_eval(command)).to match []
  end
end
