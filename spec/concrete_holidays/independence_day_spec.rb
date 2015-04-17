RSpec.describe ConcreteHolidays::IndependenceDay do
  let(:holiday) { ConcreteHolidays::IndependenceDay }
  let(:year) { 2015 }

  it "calculates independence day" do
    expect(holiday.date(year)).to eq(Date.new(year,7,4))
  end
end
