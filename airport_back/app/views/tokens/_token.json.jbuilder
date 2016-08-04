json.extract! token, :id, :token, :name, :number_of_request, :created_at, :updated_at
json.url token_url(token, format: :json)