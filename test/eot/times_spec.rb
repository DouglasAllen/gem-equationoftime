# times_spec.rb
gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

times = Eot.new

describe 'tests ajd of 2456885.0 ' do

  before(:each) do
    times.jd                =   2_456_885.0
    times.ajd = times.jd
    times.ma_ta_set
    # check date for this jd when needed.
    times.date = times.ajd_to_datetime(times.jd)
  end

  it 'expected   2456885.0 for times.ajd'do
    assert_equal(2_456_885.0, times.ajd)
  end

  it 'expected   "2014-08-15T12:00:00+00:00" for times.date'.to_s do
    assert_equal '2014-08-15T12:00:00+00:00', times.date.to_s
  end

  it 'expected   3.8508003966 for times.ma'do
    assert_equal(3.8508003966, \
                 times.ma.round(10))
  end

  it 'expected   "2014-08-15T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s ' do
    assert_equal '2014-08-15T12:00:00+00:00',\
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   "2014-08-15T19:18:45+00:00" from \
      times.astronomical_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T19:18:45+00:00', \
                 times.astronomical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T04:50:12+00:00" from \
      times.astronomical_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T04:50:12+00:00', \
                 times.astronomical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.3046949888 from \
      times.astronomical_twilight_end_jd ' do
    assert_equal(2_456_885.3046949888, \
                 times.astronomical_twilight_end_jd)
  end

  it 'expected   2_456_884.701532429 from \
      times.astronomical_twilight_start_jd ' do
    assert_equal(2_456_884.701532429, \
                 times.astronomical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T18:29:13+00:00" from \
      times.civil_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T18:29:13+00:00', \
                 times.civil_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:39:44+00:00" from \
      times.civil_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T05:39:44+00:00', \
                 times.civil_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.270291137 from times.civil_twilight_end_jd() ' do
    assert_equal(2_456_885.270291137, times.civil_twilight_end_jd)
  end

  it 'expected   2_456_884.735936281 from \
      times.civil_twilight_start_jd() ' do
    assert_equal(2_456_884.735936281, times.civil_twilight_start_jd)
  end

  it 'expected   -0.0031137091 from times.eot_jd() ' do
    assert_equal(-0.0031137091, \
                 times.eot_jd.round(10))
  end

  it 'expected   "2014-08-15T12:04:29+00:00" \
      from times.local_noon_dt().to_s ' do
    assert_equal '2014-08-15T12:04:29+00:00', times.local_noon_dt.to_s
  end

  it 'expected   "2014-08-15T18:53:58+00:00" from \
     times.nautical_twilight_end_dt.to_s ' do
    assert_equal('2014-08-15T18:53:58+00:00', \
                 times.nautical_twilight_end_dt.to_s)
  end

  it 'expected   "2014-08-15T05:14:59+00:00" from \
      times.nautical_twilight_start_dt.to_s ' do
    assert_equal('2014-08-15T05:14:59+00:00', \
                 times.nautical_twilight_start_dt.to_s)
  end

  it 'expected   2_456_885.2874805206 from \
      times.nautical_twilight_end_jd ' do
    assert_equal(2_456_885.2874805206, \
                 times.nautical_twilight_end_jd)
  end

  it 'expected   2_456_884.7187468973 from \
      times.nautical_twilight_start_jd ' do
    assert_equal(2_456_884.7187468973, \
                 times.nautical_twilight_start_jd)
  end

  it 'expected   "2014-08-15T06:01:02+00:00" from times.sunrise_dt() ' do
    assert_equal '2014-08-15T06:01:02+00:00', times.sunrise_dt.to_s
  end

  it 'expected   "2014-08-15T18:07:55+00:00" from times.sunset_dt() ' do
    assert_equal '2014-08-15T18:07:55+00:00', times.sunset_dt.to_s
  end

  it 'expected   2_456_884.7507283166 from times.sunrise_jd() ' do
    assert_equal(2_456_884.7507283166, times.sunrise_jd)
  end

  it 'expected   2_456_885.2554991012 from times.sunset_jd() ' do
    assert_equal(2_456_885.2554991012, times.sunset_jd)
  end

  it 'expected   -9.3778967134 from times.time_delta_oblique() ' do
    assert_equal(-9.3778967134, \
                 times.time_delta_oblique.round(10))
  end

  it 'expected   4.8941555843 from times.time_delta_orbit() ' do
    assert_equal(4.8941555843, \
                 times.time_delta_orbit.round(9))
  end

  it 'expected   -4.4837411291 from times.time_eot() ' do
    assert_equal(-4.4837411291, \
                 times.time_eot.round(9))
  end

end

describe 'tests ajd of 2455055.0 ' do

  before(:each) do
    times.jd                     = 2_455_055.0
    times.ajd = times.jd
    times.ma_ta_set
    # check date for this ajd when needed.
    times.date = times.ajd_to_datetime(times.jd)
  end

  it 'expected   2_455_055.0, from times. ' do
    assert_equal(2_455_055.0, times.ajd)
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from times.date.to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', times.date.to_s
  end

  it 'expected   3.7871218189 from times. ' do
    assert_equal(3.7871218189, \
                 times.ma.round(10))
  end

  it 'expected   "2009-08-11T12:00:00+00:00" from \
      times.ajd_to_datetime(times.ajd).to_s ' do
    assert_equal '2009-08-11T12:00:00+00:00', \
                 times.ajd_to_datetime(times.ajd).to_s
  end

  it 'expected   -0.0035840071 from times.eot_jd() ' do
    assert_equal(-0.0035840071, \
                 times.eot_jd.round(10))
  end

  it 'expected   "2009-08-11T06:01:42+00:00" \
      from times.sunrise_dt().to_s ' do
    assert_equal '2009-08-11T06:01:42+00:00', times.sunrise_dt.to_s
  end

  it 'expected   2_455_054.75118603 from times.sunrise_jd()' do
    assert_equal(2_455_054.75118603, times.sunrise_jd)
  end

  it 'expected   "2009-08-11T18:08:36+00:00" from times.sunset_dt() ' do
    assert_equal '2009-08-11T18:08:36+00:00', times.sunset_dt.to_s
  end

  it 'expected   2_455_055.2559819845 from times.sunset_jd() ' do
    assert_equal(2_455_055.2559819845, times.sunset_jd)
  end

  it 'expected   -5.1609701871 is from times.time_eot() ' do
    assert_equal(-5.1609701871, \
                 times.time_eot.round(10))
  end

end
