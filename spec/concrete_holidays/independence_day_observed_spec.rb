RSpec.describe ConcreteHolidays::IndependenceDayObserved do
  let(:holiday) { ConcreteHolidays::IndependenceDayObserved }

  test_cases = [
   { day: 3, years: [1992, 1998, 2009] },
   { day: 4, years: [1990, 1991, 1994, 1995, 1996, 1997, 2000, 2001, 2002, 2003, 2005, 2006, 2007, 2008] },
   { day: 5, years: [1993, 1999, 2004] },
  ]

  test_cases.each do |test|
    test[:years].each do |year|
      it "calculates observed independence day for #{year}" do
        expect(holiday.date(year)).to eq(Date.new(year,7,test[:day]))
      end
    end
  end
end
