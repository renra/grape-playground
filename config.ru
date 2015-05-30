require_relative './lib/api'

#run Proc.new { |env|
#  [200, {"Content-Type" => "text/plain"}, ["Hello from Rack!"]]
#}

run API
