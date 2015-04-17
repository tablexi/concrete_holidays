class ConcreteHolidays::NewYearsDayObserved
  include ConcreteHolidays::Calculations

  def self.date(year) # January 1st
    to_weekday_if_weekend(Date.new(year,1,1))
  end
end
