class ConcreteHolidays::MemorialDay
  include ConcreteHolidays::Calculations

  def self.date(year) # the last Monday of May
    this_or_prev(:mon, Date.new(year,5,31))
  end
end
