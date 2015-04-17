require 'concrete_holidays/calculations'
require 'concrete_holidays/holidays'

class ConcreteHolidays
  attr_reader :holidays

  def initialize
    @holidays = []
    initialize_cache
    default_holidays
  end

  def default_holidays
    # override to set initial holidays
  end

  def add_holiday(holiday)
    initialize_cache
    @holidays << holiday
  end

  def holiday?(date)
    holidays_in_year(date.year).include?(date)
  end

  private

  def initialize_cache
    @cache_by_year = {}
  end

  def holidays_in_year(year)
    @cache_by_year[year] ||= holidays.flat_map { |holiday| holiday.date(year) }
  end
end
