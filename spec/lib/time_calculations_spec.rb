require File.dirname(__FILE__) + '/../spec_helper'

describe TimeCalculations do
  context "Date.beginning_of_hour" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:00:00" do
      Date.parse('2002-02-02 02:02:02').beginning_of_hour.should == Date.parse('2002-02-02 02:00:00')
    end

    it "should convert 2002-02-02 02:00:00 to 2002-02-02 02:00:00" do
      Date.parse('2002-02-02 02:00:00').beginning_of_hour.should == Date.parse('2002-02-02 02:00:00')
    end
  end

  context "Time.beginning_of_hour" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:00:00" do
      Time.parse('2002-02-02 02:02:02').beginning_of_hour.should == Time.parse('2002-02-02 02:00:00')
    end

    it "should convert 2002-02-02 02:00:00 to 2002-02-02 02:00:00" do
      Time.parse('2002-02-02 02:00:00').beginning_of_hour.should == Time.parse('2002-02-02 02:00:00')
    end
  end

  context "DateTime.beginning_of_hour" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:00:00" do
      DateTime.parse('2002-02-02 02:02:02').beginning_of_hour.should == DateTime.parse('2002-02-02 02:00:00')
    end

    it "should convert 2002-02-02 02:00:00 to 2002-02-02 02:00:00" do
      DateTime.parse('2002-02-02 02:00:00').beginning_of_hour.should == DateTime.parse('2002-02-02 02:00:00')
    end
  end

  context "Date.beginning_of_minute" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:02:00" do
      Date.parse('2002-02-02 02:02:02').beginning_of_minute.should == Date.parse('2002-02-02 02:02:00')
    end

    it "should convert 2002-02-02 02:02:00 to 2002-02-02 02:02:00" do
      Date.parse('2002-02-02 02:02:00').beginning_of_minute.should == Date.parse('2002-02-02 02:02:00')
    end
  end

  context "Time.beginning_of_minute" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:02:00" do
      Time.parse('2002-02-02 02:02:02').beginning_of_minute.should == Time.parse('2002-02-02 02:02:00')
    end

    it "should convert 2002-02-02 02:02:00 to 2002-02-02 02:02:00" do
      Time.parse('2002-02-02 02:02:00').beginning_of_minute.should == Time.parse('2002-02-02 02:02:00')
    end
  end

  context "DateTime.beginning_of_minute" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:02:00" do
      DateTime.parse('2002-02-02 02:02:02').beginning_of_minute.should == DateTime.parse('2002-02-02 02:02:00')
    end

    it "should convert 2002-02-02 02:02:00 to 2002-02-02 02:02:00" do
      DateTime.parse('2002-02-02 02:02:00').beginning_of_minute.should == DateTime.parse('2002-02-02 02:02:00')
    end
  end

  context "Date.round_up(:year)" do
    it "should convert 2002-02-02 02:02:02 to 2003-01-01 00:00:00" do
      Date.parse('2002-02-02 02:02:02').round_up(:year).should == Date.parse('2003-01-01 00:00:00')
    end
    it "should convert 2003-01-01 00:00:00 to 2003-01-01 00:00:00" do
      Date.parse('2003-01-01 00:00:00').round_up(:year).should == Date.parse('2003-01-01 00:00:00')
    end
  end
  context "Time.round_up(:year)" do
    it "should convert 2002-02-02 02:02:02 to 2003-01-01 00:00:00" do
      Time.parse('2002-02-02 02:02:02').round_up(:year).should == Time.parse('2003-01-01 00:00:00')
    end
    it "should convert 2003-01-01 00:00:00 to 2003-01-01 00:00:00" do
      Time.parse('2003-01-01 00:00:00').round_up(:year).should == Time.parse('2003-01-01 00:00:00')
    end
  end
  context "DateTime.round_up(:year)" do
    it "should convert 2002-02-02 02:02:02 to 2003-01-01 00:00:00" do
      DateTime.parse('2002-02-02 02:02:02').round_up(:year).should == DateTime.parse('2003-01-01 00:00:00')
    end
    it "should convert 2003-01-01 00:00:00 to 2003-01-01 00:00:00" do
      DateTime.parse('2003-01-01 00:00:00').round_up(:year).should == DateTime.parse('2003-01-01 00:00:00')
    end
  end

  context "Date.round_up(:month)" do
    it "should convert 2002-02-02 02:02:02 to 2002-03-01 00:00:00" do
      Date.parse('2002-02-02 02:02:02').round_up(:month).should == Date.parse('2002-03-01 00:00:00')
    end
    it "should convert 2002-03-01 00:00:00 to 2002-03-01 00:00:00" do
      Date.parse('2002-03-01 00:00:00').round_up(:month).should == Date.parse('2002-03-01 00:00:00')
    end
  end
  context "Time.round_up(:month)" do
    it "should convert 2002-02-02 02:02:02 to 2002-03-01 00:00:00" do
      Time.parse('2002-02-02 02:02:02').round_up(:month).should == Time.parse('2002-03-01 00:00:00')
    end
    it "should convert 2002-03-01 00:00:00 to 2002-03-01 00:00:00" do
      Time.parse('2002-03-01 00:00:00').round_up(:month).should == Time.parse('2002-03-01 00:00:00')
    end
  end
  context "DateTime.round_up(:month)" do
    it "should convert 2002-02-02 02:02:02 to 2002-03-01 00:00:00" do
      DateTime.parse('2002-02-02 02:02:02').round_up(:month).should == DateTime.parse('2002-03-01 00:00:00')
    end
    it "should convert 2002-03-01 00:00:00 to 2002-03-01 00:00:00" do
      DateTime.parse('2002-03-01 00:00:00').round_up(:month).should == DateTime.parse('2002-03-01 00:00:00')
    end
  end

  context "Time.round_up(:day)" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-03 00:00:00" do
      Time.parse('2002-02-02 02:02:02').round_up(:day).should == Time.parse('2002-02-03 00:00:00')
    end
    it "should convert 2002-02-03 00:00:00 to 2002-02-03 00:00:00" do
      Time.parse('2002-02-03 00:00:00').round_up(:day).should == Time.parse('2002-02-03 00:00:00')
    end
  end
  context "DateTime.round_up(:day)" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-03 00:00:00" do
      DateTime.parse('2002-02-02 02:02:02').round_up(:day).should == DateTime.parse('2002-02-03 00:00:00')
    end
    it "should convert 2002-02-03 00:00:00 to 2002-02-03 00:00:00" do
      DateTime.parse('2002-02-03 00:00:00').round_up(:day).should == DateTime.parse('2002-02-03 00:00:00')
    end
  end

  context "Time.round_up(:hour)" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 03:00:00" do
      Time.parse('2002-02-02 02:02:02').round_up(:hour).should == Time.parse('2002-02-02 03:00:00')
    end
    it "should convert 2002-02-02 03:00:00 to 2002-02-02 03:00:00" do
      Time.parse('2002-02-02 03:00:00').round_up(:hour).should == Time.parse('2002-02-02 03:00:00')
    end
  end
  context "DateTime.round_up(:hour)" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 03:00:00" do
      DateTime.parse('2002-02-02 02:02:02').round_up(:hour).should == DateTime.parse('2002-02-02 03:00:00')
    end
    it "should convert 2002-02-02 03:00:00 to 2002-02-02 03:00:00" do
      DateTime.parse('2002-02-02 03:00:00').round_up(:hour).should == DateTime.parse('2002-02-02 03:00:00')
    end
  end

  context "Time.round_up(:minute)" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:03:00" do
      Time.parse('2002-02-02 02:02:02').round_up(:minute).should == Time.parse('2002-02-02 02:03:00')
    end
    it "should convert 2002-02-02 02:03:00 to 2002-02-02 02:03:00" do
      Time.parse('2002-02-02 02:03:00').round_up(:minute).should == Time.parse('2002-02-02 02:03:00')
    end
  end
  context "DateTime.round_up(:minute)" do
    it "should convert 2002-02-02 02:02:02 to 2002-02-02 02:03:00" do
      DateTime.parse('2002-02-02 02:02:02').round_up(:minute).should == DateTime.parse('2002-02-02 02:03:00')
    end
    it "should convert 2002-02-02 02:03:00 to 2002-02-02 02:03:00" do
      DateTime.parse('2002-02-02 02:03:00').round_up(:minute).should == DateTime.parse('2002-02-02 02:03:00')
    end
  end

end
