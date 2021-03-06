
# angles_display_spec.rb

gem 'minitest'
require 'minitest/autorun'
lib = File.expand_path('../../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'eot'

angles_displays = Eot.new

describe 'Eot angles_displays using jd of 2_456_885.0' do
  before(:all) do
    angles_displays.jd = 2_456_885.0
    angles_displays.ma_ta_set
  end

  it 'expected from angles_displays.degrees_to_s \
                  +000:00:00.000 ' do
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(0)
  end

  it 'expected from angles_displays.string_al_sun \
                  +142:35:33.356 ' do
    assert_equal '+142:35:33.356',
                 angles_displays.string_al_sun
  end

  it 'expected from angles_displays.string_arc_secs(5.023) \
                  5.023\" ' do
    assert_equal '5.023"',
                 angles_displays.string_arc_secs(5.023)
  end
end

describe 'Eot angles_displays using jd of 2_456_885.0' do
  before(:all) do
    angles_displays.jd = 2_456_885.0
    angles_displays.ma_ta_set
  end

  it 'expected from angles_displays.string_dec_sun \
                  +013:58:51.522 ' do
    assert_equal '+013:58:51.522',
                 angles_displays.string_dec_sun
  end

  it 'expected from angles_displays.string_delta_oblique \
                  -00:02.461 ' do
    assert_equal '-00:02.461',
                 angles_displays.string_delta_oblique
  end

  it 'expected from angles_displays.string_delta_orbit \
                  +00:01.284 ' do
    assert_equal '+00:01.284',
                 angles_displays.string_delta_orbit
  end
end

describe 'Eot angles_displays using jd of 2_456_885.0' do
  before(:all) do
    angles_displays.jd = 2_456_885.0
    angles_displays.ma_ta_set
  end

  it 'expected from angles_displays.string_eqc \
                  -001:13:36.800 ' do
    assert_equal '-001:13:36.800',
                 angles_displays.string_eqc
  end

  it 'expected from angles_displays.string_eot \
                  -04m, 29.76s ' do
    assert_equal '-04m, 29.76s',
                 angles_displays.string_eot
  end

  it 'expected from angles_displays.string_gha(angles_displays.gha_sun) \
                  358° 52\' 56.211" ' do
    assert_equal "358\u00B0 52' 56.211\"",
                 angles_displays.string_gha(angles_displays.gha_sun)
  end
end

describe 'Eot angles_displays using jd of 2_456_885.0' do
  before(:all) do
    angles_displays.jd = 2_456_885.0
    angles_displays.ma_ta_set
  end

  it 'expected from angles_displays.string_gha(angles_displays.tl_aries) \
                  143\u00B0 49\' 17.163\" ' do
    assert_equal "143\u00B0 49' 17.163\"",
                 angles_displays.string_gha(angles_displays.tl_aries)
  end

  it 'expected from angles_displays.string_ma_sun \
                  +220:38:04.598 ' do
    assert_equal '+220:38:04.598',
                 angles_displays.string_ma_sun
  end

  it 'expected from angles_displays.string_ra_sun \
                  +144:56:36.571 ' do
    assert_equal '+144:56:36.571',
                 angles_displays.string_ra_sun
  end
end

describe 'Eot angles_displays using jd of 2_456_885.0' do
  before(:all) do
    angles_displays.jd = 2_456_885.0
    angles_displays.ma_ta_set
  end

  it 'expected from angles_displays.string_ta_sun \
                  +219:24:27.798 ' do
    assert_equal '+219:24:27.798',
                 angles_displays.string_ta_sun
  end

  it 'expected from angles_displays.string_tl_sun \
                  +142:35:47.318 ' do
    assert_equal '+142:35:47.318',
                 angles_displays.string_tl_sun
  end

  it 'expected from angles_displays.string_to_earth \
                  +023:26:06.164 ' do
    assert_equal '+023:26:06.164',
                 angles_displays.string_to_earth
  end
end

# sun longitude angle displays
describe 'Eot angles_displays using jd of 2_455_055.5' do
  before(:all) do
    angles_displays.jd = 2_455_055.5
    angles_displays.set_t
  end

  it 'expected from angles_displays.string_ml_sun \
                  +140:34:53.462 ' do
    assert_equal '+140:34:53.462',
                 angles_displays.string_ml_sun
  end

  it 'expected from angles_displays.string_tl_sun \
                  +139:26:09.086 ' do
    assert_equal '+139:26:09.086',
                 angles_displays.string_tl_sun
  end

  it 'expected from angles_displays.string_al_sun \
                  +139:26:03.631 ' do
    assert_equal '+139:26:03.631',
                 angles_displays.string_al_sun
  end
end

# sun ra and dec angle displays
describe 'Eot angles_displays using jd of 2_455_055.5' do
  before(:all) do
    angles_displays.jd = 2_455_055.5
    angles_displays.set_t
  end

  it 'expected from angles_displays.string_dec_sun \
                  +014:59:30.817 ' do
    assert_equal '+014:59:30.817',
                 angles_displays.string_dec_sun
  end

  it 'expected from angles_displays.string_ra_sun \
                  +141:51:11.058 ' do
    assert_equal '+141:51:11.058',
                 angles_displays.string_ra_sun
  end
end

# sun anomalies displays
describe 'Eot angles_displays using jd of 2_455_055.5' do
  before(:all) do
    angles_displays.jd = 2_455_055.5
    angles_displays.set_t
  end

  it 'expected from angles_displays.string_eqc \
                  -001:08:44.376 ' do
    assert_equal '-001:08:44.376',
                 angles_displays.string_eqc
  end

  it 'expected from angles_displays.string_ma_sun \
                  +217:28:44.029 ' do
    assert_equal '+217:28:44.029',
                 angles_displays.string_ma_sun
  end

  it 'expected from angles_displays.string_ta_sun \
                  +216:19:59.653 ' do
    assert_equal '+216:19:59.653',
                 angles_displays.string_ta_sun
  end
end

# delta displays
describe 'Eot angles_displays using jd of 2_455_055.5' do
  before(:all) do
    angles_displays.jd = 2_455_055.5
    angles_displays.set_t
  end

  it 'expected from angles_displays.string_delta_oblique \
                  -00:02.532 ' do
    assert_equal '-00:02.532',
                 angles_displays.string_delta_oblique
  end

  it 'expected from angles_displays.string_delta_orbit \
                  +00:01.199 ' do
    assert_equal '+00:01.199',
                 angles_displays.string_delta_orbit
  end

  it 'expected from angles_displays.string_eot \
                  -05m, 05.53s ' do
    assert_equal '-05m, 05.53s',
                 angles_displays.string_eot
  end
end

# earth tilt and degree displays
describe 'Eot angles_displays using jd of 2_455_055.5' do
  before(:all) do
    angles_displays.jd = 2_455_055.5
    angles_displays.set_t
  end

  it 'expected from angles_displays.degrees_to_s \
                  +000:00:00.000 ' do
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(nil)
    assert_equal '+000:00:00.000', angles_displays.degrees_to_s(0)
  end

  it 'expected from angles_displays.string_mo_earth \
                  +023:26:16.904 ' do
    assert_equal '+023:26:16.904',
                 angles_displays.string_mo_earth
  end

  it 'expected from angles_displays.string_to_earth \
                  +023:26:21.564 ' do
    assert_equal '+023:26:21.564',
                 angles_displays.string_to_earth
  end
end
