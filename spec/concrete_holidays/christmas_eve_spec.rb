RSpec.describe ConcreteHolidays::ChristmasEve do
  let(:holiday) { ConcreteHolidays::ChristmasEve }
  let(:year) { 2015 }

  it "calculates christmas eve" do
    expect(holiday.date(year)).to eq(Date.new(year,12,24))
  end
end
