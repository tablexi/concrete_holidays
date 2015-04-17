RSpec.describe ConcreteHolidays::Christmas do
  let(:holiday) { ConcreteHolidays::Christmas }
  let(:year) { 2015 }

  it "calculates christmas day" do
    expect(holiday.date(year)).to eq(Date.new(year,12,25))
  end
end
