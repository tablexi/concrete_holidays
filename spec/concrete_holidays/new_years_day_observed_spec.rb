RSpec.describe ConcreteHolidays::NewYearsDayObserved do
  let(:holiday) { ConcreteHolidays::NewYearsDayObserved }

  test_cases = [
   { offset: -1, years: [1994, 2000, 2005] },
   { offset: 0,  years: [1990, 1991, 1992, 1993, 1996, 1997, 1998, 1999, 2001, 2002, 2003, 2004] },
   { offset: 1,  years: [1995, 2006] },
  ]

  test_cases.each do |test|
    test[:years].each do |year|
      it "calculates observed new year's day for #{year}" do
        expect(holiday.date(year)).to eq(Date.new(year,1,1) + test[:offset])
      end
    end
  end
end
