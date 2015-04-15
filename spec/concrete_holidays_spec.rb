require 'concrete_holidays'

RANGE = Date.new(2015)...Date.new(2016)

class VacationTrue
  def self.date(year); RANGE.to_a; end
  def date(year); RANGE.to_a; end
end

RSpec.describe ConcreteHolidays do
  context "with no holidays defined" do
    let(:holidays) { ConcreteHolidays.new }

    RANGE.each do |date|
      it "#holiday? returns false for #{date}" do
        expect(holidays.holiday?(date)).to be false
      end
    end
  end

  context "with a holiday via class method" do
    let(:holidays) { ConcreteHolidays.new }

    before(:each) do
      holidays.add_holiday VacationTrue
    end

    RANGE.each do |date|
      it "#holiday? returns true for #{date}" do
        expect(holidays.holiday?(date)).to be true
      end
    end
  end

  context "with a holiday via instance method" do
    let(:holidays) { ConcreteHolidays.new }

    before(:each) do
      holidays.add_holiday VacationTrue.new
    end

    RANGE.each do |date|
      it "#holiday? returns true for #{date}" do
        expect(holidays.holiday?(date)).to be true
      end
    end
  end
end
