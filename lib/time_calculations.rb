require "time_calculations/version"
require "active_support/core_ext"

module TimeCalculations
  def beginning_of_hour
    change(:min => 0, :sec => 0, :usec => 0)
  end

  def beginning_of_minute
    change(:sec => 0, :usec => 0)
  end

  def round_up(what)
    case what
    when :year
      self == beginning_of_year ? self : advance(:years => 1).beginning_of_year
    when :month
      self == beginning_of_month ? self : advance(:months => 1).beginning_of_month
    when :day
      return self unless acts_like?(:time)
      self == beginning_of_day ? self : advance(:days => 1).beginning_of_day
    when :hour
      return self unless acts_like?(:time)
      self == beginning_of_hour ? self : advance(:hours => 1).beginning_of_hour
    when :minute
      return self unless acts_like?(:time)
      self == beginning_of_minute ? self : advance(:minutes => 1).beginning_of_minute
    else
      raise ArgumentError, "Don't know how to round up #{what}"
    end
  end
end

class Time
  include TimeCalculations
end

class Date
  include TimeCalculations
end

class DateTime
  include TimeCalculations
end
