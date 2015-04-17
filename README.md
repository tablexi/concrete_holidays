# ConcreteHolidays
[![Gem Version](https://badge.fury.io/rb/concrete_holidays.svg)](https://rubygems.org/gems/concrete_holidays)
[![Build Status](https://travis-ci.org/tablexi/concrete_holidays.svg?branch=master)](https://travis-ci.org/tablexi/concrete_holidays)

The ConcreteHolidays gem was built to calculate if a given date is a holiday using plain old ruby objects.

## Example Usage

```ruby
class MyHolidays < ConcreteHolidays
  def default_holidays
    add_holiday ConcreteHolidays::NewYearsDayObserved
    add_holiday ConcreteHolidays::MemorialDay
    add_holiday ConcreteHolidays::IndependenceDayObserved
    add_holiday ConcreteHolidays::LaborDay
    add_holiday ConcreteHolidays::Thanksgiving
    add_holiday ConcreteHolidays::BlackFriday
    add_holiday ConcreteHolidays::ChristmasEve
    add_holiday ConcreteHolidays::ChristmasObserved
    add_holiday ConcreteHolidays::NewYearsEve
  end
end

holidays = MyHolidays.new
holidays.holiday?(date)
```

## Create a custom holiday (class)

The class must implement `self.date(year)` and return a date or array of dates.

```ruby
class MyBirthday
  def self.date(year)
    Date.new(year,3,14)
  end
end

holidays = ConcreteHolidays.new
holidays.add_holiday MyBirthday
holidays.holiday?(date)
```

## Create a custom holiday (instance)

The instance must respond to `date(year)` and return a date or array of dates.

```ruby
class MyBirthday
  def date(year)
    Date.new(year,3,14)
  end
end

holidays = ConcreteHolidays.new
holidays.add_holiday MyBirthday.new
holidays.holiday?(date)
```
