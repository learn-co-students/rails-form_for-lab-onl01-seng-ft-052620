require 'rails_helper'

describe Student do
  before(:each) do
    @student = Student.create!(first_name: "Daenerys", last_name: "Targaryen")
  end

  it 'can be created' do
    expect(@student).to be_valid
  end

  it 'can be represented as a string' do
    expect(@student.to_s).to eq("Daenerys Targaryen")
  end

end