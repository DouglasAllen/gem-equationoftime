
# init_spec.rb
gem 'minitest'
require 'minitest/autorun'

lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

describe 'Eot_initialize has set attributes ' do
  JD_TODAY = DateTime.now.to_time.utc.to_datetime.jd.to_f
  it "expected #{JD_TODAY} from Eot.new.ajd" do
    assert_equal(JD_TODAY, Eot.new.jd)
  end

  UK_LAT = 0.0
  it "expected #{UK_LAT} from Eot.new.latitude" do
    assert_equal(UK_LAT, Eot.new.latitude)
  end

  UK_LNG = 0.0
  it "expected #{UK_LNG} from Eot.new.longitude" do
    assert_equal(UK_LNG, Eot.new.longitude)
  end

  MA_SUN = Eot.new.ma_sun.round(10)
  it "expected #{MA_SUN} from @ma.round(10)" do
    eot = Eot.new
    eot.ajd = JD_TODAY
    assert_equal(MA_SUN, eot.ma.round(10))
  end
end

describe 'Eot_initialize has set attributes ' do
  FRAC_CENT = (Eot.new.jd - Eot::DJ00) / Eot::DJC
  it "expected #{FRAC_CENT} from @t" do
    eot = Eot.new
    eot.ajd = JD_TODAY
    assert_equal(FRAC_CENT, eot.t)
  end

  DEFAULT_INT = nil
  it "expected #{DEFAULT_INT} from Eot.new.addr" do
    assert_nil(DEFAULT_INT, Eot.new.addr)
  end
end
