
# class Eot file = utilities.rb
# methods for general use
class Eot
  # From utilities.rb:
  # A check for default J2000
  # sets default when arg is nil
  def check_jd_nil(jd = DJ00)
    jd.nil? ? DJ00 : jd
  end

  # From utilities.rb:
  # A check for default J2000
  # sets default when arg is zero
  def check_jd_zero(jd = DJ00)
    jd.zero? ? DJ00 : check_jd_nil(jd)
  end

  # From utilities.rb:
  # A check for default DT2000
  # sets default when arg is nil
  def check_t_nil(dt = DT2000)
    dt.nil? ? DT2000 : dt
  end

  # From utilities.rb:
  # A check for default DT2000
  # sets default when arg is zero
  def check_t_zero(dt = DT2000)
    dt.zero? ? DT2000 : check_t_nil(dt)
  end

  # From utilities.rb:
  # formats degree string
  def f_string(sgn, u, m, s, ds)
    sgn +
      format('%03d', u) +
      ':' +
      format('%02d', m) +
      ':' +
      format('%02d', s) +
      '.' +
      format('%3.3d', ds)
  end

  # From utilities.rb:
  # Keeps large angles in range of 360.0
  # aliased by truncate
  def mod_360(x = 0.0)
    x.nil? ? x = 0.0 : x
    360.0 * (x / 360.0 - Integer(x / 360.0))
  end
  alias truncate mod_360
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  # require 'utilities_spec'
  require 'aliased_utilities_spec'

end
