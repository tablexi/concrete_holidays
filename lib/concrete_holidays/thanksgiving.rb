class ConcreteHolidays::Thanksgiving
  include ConcreteHolidays::Calculations

  def self.date(year) # the fourth Thursday in November
    date = this_or_next(:thu, Date.new(year,11,1))
    3.times do
      date = the_next(:thu, date)
    end
    date
  end
end
