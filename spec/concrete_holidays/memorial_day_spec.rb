RSpec.describe ConcreteHolidays::MemorialDay do
  let(:holiday) { ConcreteHolidays::MemorialDay }

  # http://en.wikipedia.org/wiki/Memorial_Day#Dates
  test_cases = [
   { years: [1971, 1999, 2027, 2055, 2083], day: 31 },
   { years: [1972, 2000, 2028, 2056, 2084], day: 29 },
   { years: [1973, 2001, 2029, 2057, 2085], day: 28 },
   { years: [1974, 2002, 2030, 2058, 2086], day: 27 },
   { years: [1975, 2003, 2031, 2059, 2087], day: 26 },
   { years: [1976, 2004, 2032, 2060, 2088], day: 31 },
   { years: [1977, 2005, 2033, 2061, 2089], day: 30 },
   { years: [1978, 2006, 2034, 2062, 2090], day: 29 },
   { years: [1979, 2007, 2035, 2063, 2091], day: 28 },
   { years: [1980, 2008, 2036, 2064, 2092], day: 26 },
   { years: [1981, 2009, 2037, 2065, 2093], day: 25 },
   { years: [1982, 2010, 2038, 2066, 2094], day: 31 },
   { years: [1983, 2011, 2039, 2067, 2095], day: 30 },
   { years: [1984, 2012, 2040, 2068, 2096], day: 28 },
   { years: [1985, 2013, 2041, 2069, 2097], day: 27 },
   { years: [1986, 2014, 2042, 2070, 2098], day: 26 },
   { years: [1987, 2015, 2043, 2071, 2099], day: 25 },
   { years: [1988, 2016, 2044, 2072],       day: 30 },
   { years: [1989, 2017, 2045, 2073],       day: 29 },
   { years: [1990, 2018, 2046, 2074],       day: 28 },
   { years: [1991, 2019, 2047, 2075],       day: 27 },
   { years: [1992, 2020, 2048, 2076],       day: 25 },
   { years: [1993, 2021, 2049, 2077],       day: 31 },
   { years: [1994, 2022, 2050, 2078],       day: 30 },
   { years: [1995, 2023, 2051, 2079],       day: 29 },
   { years: [1996, 2024, 2052, 2080],       day: 27 },
   { years: [1997, 2025, 2053, 2081],       day: 26 },
   { years: [1998, 2026, 2054, 2082],       day: 25 },
  ]

  test_cases.each do |test|
    test[:years].each do |year|
      it "calculates memorial day for #{year}" do
        expect(holiday.date(year)).to eq(Date.new(year,5,test[:day]))
      end
    end
  end
end
