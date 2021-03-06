
# displays_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

displays = Eot.new

describe 'Eot displays using ajd of 2_456_885.0' do
  before(:each) do
    displays.jd = 2_456_885.0
    displays.set_t
  end

  it 'expected   "+000:00:00.000" from displays.degrees_to_s() ' do
    assert_equal '+000:00:00.000', displays.degrees_to_s
    assert_equal '+000:00:00.000', displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', displays.degrees_to_s(0)
  end

  it 'expected   "+142:35:33.356" from displays.string_al_sun() ' do
    assert_equal '+142:35:33.356', displays.string_al_sun
  end

  it 'expected   "00:00:00" from displays.string_day_fraction_to_time() ' do
    assert_equal '00:00:00', displays.string_day_fraction_to_time
    assert_equal '00:00:00', displays.string_day_fraction_to_time(nil)
    assert_equal '00:00:00', displays.string_day_fraction_to_time(0)
  end

  it 'expected   "+013:58:51.522" from displays.string_dec_sun ' do
    assert_equal '+013:58:51.522', displays.string_dec_sun
  end

  it 'expected   "-04m, 29.76s" from displays.string_eot ' do
    assert_equal '-04m, 29.76s', displays.string_eot
  end

  it 'expected   "2000-01-01" from displays.string_jd_to_date() ' do
    assert_equal '2000-01-01', displays.string_jd_to_date
    assert_equal '2000-01-01', displays.string_jd_to_date(nil)
    assert_equal '-4712-01-01', displays.string_jd_to_date(0)
  end

  it 'expected from displays.jd_to_date_string(displays.ajd) \
                  2014-08-15 ' do
    assert_equal '2014-08-15', displays.jd_to_date_string(displays.jd)
  end

  it 'expected   "+220:38:04.598" from displays.string_ma_sun ' do
    assert_equal '+220:38:04.598', displays.string_ma_sun
  end
end

describe 'Eot displays using ajd of 2_456_885.0' do
  before(:each) do
    displays.jd = 2_456_885.0
    displays.set_t
  end

  it 'expected   "+144:56:36.571" from displays.string_ra_sun ' do
    assert_equal '+144:56:36.571', displays.string_ra_sun
  end

  it 'expected   "+219:24:27.798" from displays.string_ta_sun ' do
    assert_equal '+219:24:27.798', displays.string_ta_sun
  end

  it 'expected   "12:00:00.000" from displays.string_time() ' do
    assert_equal '12:00:00.000', displays.string_time
    assert_equal '12:00:00.000', displays.string_time(nil)
    assert_equal '00:00:00.000', displays.string_time(0)
  end

  it 'expected from displays.display_time_string(displays.date) \
                  12:00:00.000 ' do
    assert_equal '12:00:00.000',
                 displays.display_time_string(displays.date)
  end
end

describe 'Eot displays using ajd of 2_456_885.0' do
  before(:each) do
    displays.jd = 2_456_885.0
    displays.set_t
  end

  it 'expected from displays.string_tl_sun \
                  +142:35:47.318 ' do
    assert_equal '+142:35:47.318', displays.string_tl_sun
  end

  it 'expected from displays.string_to_earth \
                  +023:26:06.164 ' do
    assert_equal '+023:26:06.164', displays.string_to_earth
  end
end

describe 'Eot displays explicit values' do
  it 'expected from displays.string_time(16.6780) \
                  16:40:40.800 ' do
    assert_equal '16:40:40.800', displays.string_time(16.6780)
  end

  it 'expected from displays.string_time(17.988) \
                  17:59:16.800 ' do
    assert_equal '17:59:16.800', displays.string_time(17.988)
  end
end
