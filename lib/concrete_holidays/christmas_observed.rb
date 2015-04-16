class ConcreteHolidays::ChristmasObserved
  include ConcreteHolidays::Calculations

  def self.date(year) # December 25th
    to_weekday_if_weekend(Date.new(year,12,25))
  end
end
