
# aliased_displays_spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

aliased_displays = Eot.new

describe 'aliased_displays using ajd of 2_456_885.0' do
  before(:each) do
    aliased_displays.jd = 2_456_885.0
    aliased_displays.ma_ta_set
    aliased_displays.date = DateTime.jd(aliased_displays.jd + 0.5)
  end

  it 'expected from aliased_displays.jd \
                 2_456_885.0 ' do
    assert_equal 2_456_885.0,
                 aliased_displays.jd
  end

  it 'expected from aliased_displays.date.to_s \
                  2014-08-15T12:00:00+00:00' do
    assert_equal '2014-08-15T12:00:00+00:00',
                 aliased_displays.date.to_s
  end

  it 'expected from aliased_displays.ma \
                 3.850800396604 ' do
    assert_equal 3.850800396604,
                 aliased_displays.ma
  end
end

describe 'aliased_displays using ajd of 2_456_885.0' do
  before(:each) do
    aliased_displays.jd = 2_456_885.0
    aliased_displays.ma_ta_set
  end

  it 'expected from aliased_displays.apparent_longitude_string \
                  +142:35:33.356 ' do
    assert_equal '+142:35:33.356',
                 aliased_displays.apparent_longitude_string
  end

  it 'expected from
      from aliased_displays.declination_string \
                  +013:58:51.522 ' do
    assert_equal '+013:58:51.522',
                 aliased_displays.declination_string
  end

  it 'expected from aliased_displays.display_equation_of_time \
                  -04m, 29.76s ' do
    assert_equal '-04m, 29.76s',
                 aliased_displays.display_equation_of_time
  end
end

describe 'aliased_displays using ajd of 2_456_885.0' do
  before(:each) do
    aliased_displays.jd = 2_456_885.0
    aliased_displays.ma_ta_set
  end

  it 'expected from aliased_displays.display_time_string() \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 aliased_displays.display_time_string
    assert_equal '12:00:00.000',
                 aliased_displays.display_time_string(nil)
    assert_equal '00:00:00.000',
                 aliased_displays.display_time_string(0)
  end

  it 'expected from aliased_displays.jd_to_date_string() \
                  2000-01-01 ' do
    assert_equal '2000-01-01',
                 aliased_displays.jd_to_date_string
    assert_equal '2000-01-01',
                 aliased_displays.jd_to_date_string(nil)
    assert_equal '-4712-01-01',
                 aliased_displays.jd_to_date_string(0)
  end
end

describe 'aliased_displays using ajd of 2_456_885.0' do
  before(:each) do
    aliased_displays.jd = 2_456_885.0
    aliased_displays.ma_ta_set
    aliased_displays.date = DateTime.jd(aliased_displays.jd + 0.5)
    @date = aliased_displays.date
  end

  it 'expected from aliased_displays.display_time_string(aliased_displays.date) \
                  12:00:00.000' do
    assert_equal '12:00:00.000',
                 aliased_displays.display_time_string(@date)
  end

  it 'expected from aliased_displays.jd_to_date_string(aliased_displays.jd) \
                  2014-08-15 ' do
    assert_equal '2014-08-15',
                 aliased_displays.jd_to_date_string(aliased_displays.jd)
  end

  it 'expected from aliased_displays.julian_period_day_fraction_to_time \
                  00:00:00 ' do
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(nil)
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(0)
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(0.5)
    assert_equal '06:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(0.25)
  end
end

describe 'aliased_displays using ajd of 2_456_885.0' do
  before(:each) do
    aliased_displays.jd = 2_456_885.0
    aliased_displays.ma_ta_set
  end

  it 'expected from aliased_displays.mean_anomaly_string \
                  +220:38:04.598 ' do
    assert_equal '+220:38:04.598',
                 aliased_displays.mean_anomaly_string
  end

  it 'expected from aliased_displays.right_ascension_string \
                  +144:56:36.571 ' do
    assert_equal '+144:56:36.571',
                 aliased_displays.right_ascension_string
  end

  it 'expected from aliased_displays.true_anomaly_string \
                  +219:24:27.798 ' do
    assert_equal '+219:24:27.798',
                 aliased_displays.true_anomaly_string
  end
end

describe 'aliased_displays using ajd of 2_456_885.0' do
  before(:each) do
    aliased_displays.jd = 2_456_885.0
    aliased_displays.ma_ta_set
  end
  it 'expected from aliased_displays.true_longitude_string \
                  +142:35:47.318 ' do
    assert_equal '+142:35:47.318',
                 aliased_displays.true_longitude_string
  end

  it 'expected from aliased_displays.true_obliquity_string \
                  +023:26:06.164 ' do
    assert_equal '+023:26:06.164',
                 aliased_displays.true_obliquity_string
  end
end

describe 'Eot aliased displays explicit values' do
  it 'expected from aliased_displays.display_time_string(16.6780) \
                  16:40:40.800 ' do
    assert_equal '16:40:40.800',
                 aliased_displays.display_time_string(16.6780)
  end

  it 'expected from aliased_displays.display_time_string(17988) \
                  17:59:16.800 ' do
    aliased_displays.date = Date.today.to_s
    assert_equal '17:59:16.800',
                 aliased_displays.display_time_string(17.988)
  end
end

describe 'aliased_displays using ajd of 2_455_055.5' do
  before(:each) do
    aliased_displays.jd = 2_455_055.5
    aliased_displays.ma_ta_set
    aliased_displays.date = DateTime.jd(aliased_displays.jd + 0.5)
    @date = aliased_displays.date
  end

  it 'expected from aliased_displays.display_time_string(aliased_displays.date) \
                  00:00:00.000' do
    assert_equal '00:00:00.000',
                 aliased_displays.display_time_string(@date)
  end

  it 'expected from aliased_displays.jd_to_date_string(aliased_displays.jd) \
                  2009-08-11 ' do
    assert_equal '2009-08-11',
                 aliased_displays.jd_to_date_string(aliased_displays.jd)
  end
end

describe 'aliased_displays using ajd of 2_455_055.5' do
  before(:each) do
    aliased_displays.jd = 2_455_055.5
    aliased_displays.ma_ta_set
    aliased_displays.date = DateTime.jd(aliased_displays.jd + 0.5)
    @date = aliased_displays.date
  end

  it 'expected from aliased_displays.julian_period_day_fraction_to_time \
                  00:00:00 ' do
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(nil)
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(0)
    assert_equal '00:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(0.5)
    assert_equal '06:00:00',
                 aliased_displays.julian_period_day_fraction_to_time(0.25)
  end
end
