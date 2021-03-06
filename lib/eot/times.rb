
##
# class Eot file = times.rb:
# methods for calculating times
#
class Eot
  # ===
  #
  #   Solves the problem for converting back to a
  #   correct DateTime
  #
  def ajd_to_datetime(ajd)
    DateTime.jd(ajd + 0.5)
  end
  alias jd_to_datetime ajd_to_datetime

  # From times.rb:
  # Uses @ajd attribute
  # Returns astronomical twilight end as a DateTime
  def astronomical_twilight_end_dt
    ajd_to_datetime(astronomical_twilight_end_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns astronomical twilight start as a DateTime
  def astronomical_twilight_start_dt
    ajd_to_datetime(astronomical_twilight_start_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns civil twilight end as a DateTime
  def civil_twilight_end_dt
    ajd_to_datetime(civil_twilight_end_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns civil twilight start as a DateTime
  def civil_twilight_start_dt
    ajd_to_datetime(civil_twilight_start_jd)
  end

  def date_dt
    ajd_to_datetime(@jd)
  end

  # From times.rb:
  # Uses @ajd and @longitude attributes
  # Returns DateTime object of local noon or solar transit
  def local_noon_dt
    ajd_to_datetime(mean_local_noon_jd - eot_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns nautical twilight end as a DateTime
  def nautical_twilight_end_dt
    ajd_to_datetime(nautical_twilight_end_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns nautical twilight start as a DateTime
  def nautical_twilight_start_dt
    ajd_to_datetime(nautical_twilight_start_jd)
  end

  # From times.rb:
  # sets @ajd to DateTime.now
  # Returns EOT (equation of time) now in decimal minutes form
  def now
    @ajd = DateTime.now.to_time.utc.to_datetime.ajd
    @t = (@ajd - DJ00) / DJC
    time_eot
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunrise
  def sunrise_dt
    ajd_to_datetime(sunrise_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns a DateTime object of local sunset
  def sunset_dt
    ajd_to_datetime(sunset_jd)
  end

  # From times.rb:
  # Uses @ajd attribute
  # Returns EOT as a float for decimal minutes time
  def time_eot
    (eot * R2D * 4.0).to_f.round(12)
  end
end

if __FILE__ == $PROGRAM_NAME

  p spec = File.expand_path('../../../test/eot', __FILE__)
  $LOAD_PATH.unshift(spec) unless $LOAD_PATH.include?(spec)
  require 'times_spec'

end
