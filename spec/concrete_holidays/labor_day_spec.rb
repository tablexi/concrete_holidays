RSpec.describe ConcreteHolidays::LaborDay do
  let(:holiday) { ConcreteHolidays::LaborDay }

  # http://en.wikipedia.org/wiki/Labor_Day#Dates
  test_cases = [
   	{ day: 3, years: [1900, 1928, 1956, 1984, 2012, 2040, 2068, 2096] },
	{ day: 2, years: [1901, 1929, 1957, 1985, 2013, 2041, 2069, 2097] },
	{ day: 1, years: [1902, 1930, 1958, 1986, 2014, 2042, 2070, 2098] },
	{ day: 7, years: [1903, 1931, 1959, 1987, 2015, 2043, 2071, 2099] },
	{ day: 5, years: [1904, 1932, 1960, 1988, 2016, 2044, 2072] },
	{ day: 4, years: [1905, 1933, 1961, 1989, 2017, 2045, 2073] },
	{ day: 3, years: [1906, 1934, 1962, 1990, 2018, 2046, 2074] },
	{ day: 2, years: [1907, 1935, 1963, 1991, 2019, 2047, 2075] },
	{ day: 7, years: [1908, 1936, 1964, 1992, 2020, 2048, 2076] },
	{ day: 6, years: [1909, 1937, 1965, 1993, 2021, 2049, 2077] },
	{ day: 5, years: [1910, 1938, 1966, 1994, 2022, 2050, 2078] },
	{ day: 4, years: [1911, 1939, 1967, 1995, 2023, 2051, 2079] },
	{ day: 2, years: [1912, 1940, 1968, 1996, 2024, 2052, 2080] },
	{ day: 1, years: [1913, 1941, 1969, 1997, 2025, 2053, 2081] },
	{ day: 7, years: [1914, 1942, 1970, 1998, 2026, 2054, 2082] },
	{ day: 6, years: [1915, 1943, 1971, 1999, 2027, 2055, 2083] },
	{ day: 4, years: [1916, 1944, 1972, 2000, 2028, 2056, 2084] },
	{ day: 3, years: [1917, 1945, 1973, 2001, 2029, 2057, 2085] },
	{ day: 2, years: [1918, 1946, 1974, 2002, 2030, 2058, 2086] },
	{ day: 1, years: [1919, 1947, 1975, 2003, 2031, 2059, 2087] },
	{ day: 6, years: [1920, 1948, 1976, 2004, 2032, 2060, 2088] },
	{ day: 5, years: [1921, 1949, 1977, 2005, 2033, 2061, 2089] },
	{ day: 4, years: [1922, 1950, 1978, 2006, 2034, 2062, 2090] },
	{ day: 3, years: [1923, 1951, 1979, 2007, 2035, 2063, 2091] },
	{ day: 1, years: [1924, 1952, 1980, 2008, 2036, 2064, 2092] },
	{ day: 7, years: [1925, 1953, 1981, 2009, 2037, 2065, 2093] },
	{ day: 6, years: [1926, 1954, 1982, 2010, 2038, 2066, 2094] },
	{ day: 5, years: [1927, 1955, 1983, 2011, 2039, 2067, 2095] },
  ]

  test_cases.each do |test|
    test[:years].each do |year|
      it "calculates labor day for #{year}" do
        expect(holiday.date(year)).to eq(Date.new(year,9,test[:day]))
      end
    end
  end
end
