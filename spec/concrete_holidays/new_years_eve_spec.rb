RSpec.describe ConcreteHolidays::NewYearsEve do
  let(:holiday) { ConcreteHolidays::NewYearsEve }
  let(:year) { 2015 }

  it "calculates new years eve" do
    expect(holiday.date(year)).to eq(Date.new(year,12,31))
  end
end
