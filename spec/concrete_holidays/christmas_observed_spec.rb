RSpec.describe ConcreteHolidays::ChristmasObserved do
  let(:holiday) { ConcreteHolidays::ChristmasObserved }

  test_cases = [
   { day: 24, years: [1993, 1999, 2004] },
   { day: 25, years: [1990, 1991, 1992, 1995, 1996, 1997, 1998, 2000, 2001, 2002, 2003] },
   { day: 26, years: [1994, 2005] },
  ]

  test_cases.each do |test|
    test[:years].each do |year|
      it "calculates observed christmas day for #{year}" do
        expect(holiday.date(year)).to eq(Date.new(year,12,test[:day]))
      end
    end
  end
end
