class ConcreteHolidays
  module Calculations
    WDAY_SYMBOLS = {
      sun: 0, mon: 1, tue: 2, wed: 3, thu: 4, fri: 5, sat: 6,
      sunday: 0, monday: 1, tuesday: 2, wednesday: 3, thursday: 4, friday: 5, saturday: 6
    }

    def self.included(base)
      base.extend(ClassMethods)
    end

    module ClassMethods
      def to_weekday_if_weekend(date)
        date += 1 if date.wday == wday_from_symbol(:sun)
        date -= 1 if date.wday == wday_from_symbol(:sat)
        date
      end

      def this_or_prev(day_symbol, from_date)
        from_date -= 1 until from_date.wday == wday_from_symbol(day_symbol)
        from_date
      end

      def this_or_next(day_symbol, from_date)
        from_date += 1 until from_date.wday == wday_from_symbol(day_symbol)
        from_date
      end

      def the_next(day_symbol, from_date)
        loop do
          from_date += 1
          break if from_date.wday == wday_from_symbol(day_symbol)
        end
        from_date
      end

      def wday_from_symbol(symbol)
        WDAY_SYMBOLS.fetch(symbol)
      end
    end
  end
end
