class ConcreteHolidays::IndependenceDayObserved
  include ConcreteHolidays::Calculations

  def self.date(year) # July 4th
    to_weekday_if_weekend(Date.new(year,7,4))
  end
end
