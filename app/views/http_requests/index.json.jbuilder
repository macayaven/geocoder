json.array!(@http_requests) do |http_request|
  json.extract! http_request, :id, :ip, :address
  json.url http_request_url(http_request, format: :json)
end
