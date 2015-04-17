RSpec.describe ConcreteHolidays::NewYearsDay do
  let(:holiday) { ConcreteHolidays::NewYearsDay }
  let(:year) { 2015 }

  it "calculates new year's day" do
    expect(holiday.date(year)).to eq(Date.new(year,1,1))
  end
end
