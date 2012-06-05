# TimeCalculations

Extra methods for Date, Time, and DateTime.

## Installation

Add this line to your application's Gemfile:

    gem 'time_calculations'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install time_calculations

## Usage

    Time.parse('2002-02-02 02:02:02').beginning_of_hour   == Time.parse('2002-02-02 02:00:00')
    Time.parse('2002-02-02 02:02:02').beginning_of_minute == Time.parse('2002-02-02 02:02:00')

    Time.parse('2002-02-02 02:02:02').round_up(:year)   == Time.parse('2003-01-01 00:00:00')
    Time.parse('2002-01-01 00:00:00').round_up(:year)   == Time.parse('2002-01-01 00:00:00')
    Time.parse('2002-02-02 02:02:02').round_up(:month)  == Time.parse('2002-03-01 00:00:00')
    Time.parse('2002-02-01 00:00:00').round_up(:month)  == Time.parse('2002-02-01 00:00:00')
    Time.parse('2002-02-02 02:02:02').round_up(:day)    == Time.parse('2002-02-03 00:00:00')
    Time.parse('2002-02-02 00:00:00').round_up(:day)    == Time.parse('2002-02-02 00:00:00')
    Time.parse('2002-02-02 02:02:02').round_up(:hour)   == Time.parse('2002-02-02 03:00:00')
    Time.parse('2002-02-02 02:00:00').round_up(:hour)   == Time.parse('2002-02-02 02:00:00')
    Time.parse('2002-02-02 02:02:02').round_up(:minute) == Time.parse('2002-02-02 02:03:00')
    Time.parse('2002-02-02 02:02:00').round_up(:minute) == Time.parse('2002-02-02 02:02:00')

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
