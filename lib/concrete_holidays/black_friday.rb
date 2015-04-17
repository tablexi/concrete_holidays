require 'concrete_holidays/thanksgiving'

class ConcreteHolidays::BlackFriday
  def self.date(year) # the day after Thanksgiving
    ConcreteHolidays::Thanksgiving.date(year) + 1
  end
end
