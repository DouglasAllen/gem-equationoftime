
##
# class Eot file = angle_displays.rb:
# methods for display of angles.
#
class Eot
  # From angle_displays.rb

  # String formatter for d:m:s display
  def degrees_to_s(radians = 0.0)
    radians.nil? ? radians = 0.0 : radians
    s, idmsf = Celes.a2af(3, radians)
    f_string(s, idmsf[0], idmsf[1], idmsf[2], idmsf[3])
  end

  # From angle_displays.rb

  # String format of apparent longitude
  def string_al_sun
    degrees_to_s(al_sun)
  end
  alias apparent_longitude_string string_al_sun

  # From angle_displays.rb

  # String display of arc seconds
  def string_arc_secs(asec)
    asec.to_s + 34.chr
  end

  # From angle_displays.rb

  # String format of declination
  def string_dec_sun
    degrees_to_s(dec_sun)
  end
  alias declination_string string_dec_sun

  # From angle_displays.rb

  # String format of delta epsilon
  def string_delta_epsilon
    string_arc_secs((delta_epsilon * R2D * 3600.0).round(3))
  end

  # From angle_displays.rb

  # String format for delta oblique
  def string_delta_oblique
    show_minutes(delta_oblique)
  end

  # From angle_displays.rb

  # String format for delta orbit
  def string_delta_orbit
    show_minutes(delta_orbit)
  end

  # From angle_displays.rb

  # String format for delta psi
  def string_delta_psi
    string_arc_secs((delta_psi * R2D * 3600.0).round(3))
  end

  # From angle_displays.rb

  # String format for centre
  def string_eqc
    degrees_to_s(center)
  end

  # From angle_displays.rb

  # String format for GHA
  def string_gha(gha)
    a = gha * R2D
    d = Integer(a).to_s + "\xC2\xB0"
    m = Integer((a - Integer(a)) * 60).to_s + 39.chr
    s = (((a - Integer(a)) * 60 - Integer((a - Integer(a)) * 60)) * 100).round(3).to_s
    d + 32.chr + m + 32.chr + s + 34.chr
  end

  # From angle_displays.rb

  # String format of mean anomaly
  def string_ma_sun
    degrees_to_s(@ma)
  end
  alias mean_anomaly_string string_ma_sun

  # From angle_displays.rb

  # String format of mean longitude
  def string_ml_sun
    degrees_to_s(ml_sun)
  end
  alias mean_longitude_string string_ml_sun

  # From angle_displays.rb

  # String format of mean obliquity
  def string_mo_earth
    degrees_to_s(mo_earth)
  end
  alias mean_obliquity_string string_mo_earth

  # From angle_displays.rb

  # String format of right ascension
  def string_ra_sun
    degrees_to_s(right_ascension_sun)
  end
  alias right_ascension_string string_ra_sun

  # From angle_displays.rb

  # String format of true anomaly
  def string_ta_sun
    degrees_to_s(ta_sun)
  end
  alias true_anomaly_string string_ta_sun

  # From angle_displays.rb

  # String format of true longitude
  def string_tl_sun
    degrees_to_s(tl_sun)
  end
  alias true_longitude_string string_tl_sun

  # From angle_displays.rb

  # String format of true obliquity
  def string_to_earth
    degrees_to_s(to_earth)
  end
  alias true_obliquity_string string_to_earth
end

if __FILE__ == $PROGRAM_NAME

  spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'angles_displays_spec'
  require 'aliased_angles_displays_spec'

end
