# analemma_data_generator.rb

lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'eot'
require 'safe_yaml'
require 'time'

eot    = Eot.new

start  = "2014-1-1"
finish = "2014-12-31"

start_time  = Time.utc( 2014, "jan", 1, 12, 0, 0 )
finish_time = Time.utc( 2014, "dec", 31, 12, 0, 0 )


start_jd  = start_time.to_datetime.jd
finish_jd = finish_time.to_datetime.jd

fstr = "%b %d"

@data, @group, @group_id = [], {}, 0

(start_jd..finish_jd).each do |jd|     
  date    = Date.jd(jd + 0.5).strftime(fstr)
  
  eot.ajd = jd  
  delta_t = eot.show_minutes(eot.time_eot())
  trans   = eot.display_time_string(12 - eot.time_eot()/60.0)
  e1      = eot.show_minutes(eot.time_delta_orbit())
  e2      = eot.show_minutes(eot.time_delta_oblique())
  decline = eot.degrees_to_s(eot.dec_Sun())
#  @group  = {group_id:    "#{@group_id}", 
#             date:        date, 
#             eot:         delta_t,                   
#             orbit:       "#{e1}",
#             oblique:     "#{e2}",
#             transit:     "#{trans}",
#             declination: "#{decline}",             
#             julian:      "#{jd}",
#             }  
#  @data << @group
#  @group_id  += 1
end

file_path = "analemma_data.yml"
File::open( file_path, "w" ) do |f|
  YAML.dump( @data, f )
end

puts "File analemma_data.yml processed"