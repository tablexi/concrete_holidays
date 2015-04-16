class ConcreteHolidays::LaborDay
  include ConcreteHolidays::Calculations

  def self.date(year) # the first Monday of September
    this_or_next(:mon, Date.new(year,9,1))
  end
end
