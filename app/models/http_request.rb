class HttpRequest < ActiveRecord::Base
  geocoded_by :full_street_address
end
