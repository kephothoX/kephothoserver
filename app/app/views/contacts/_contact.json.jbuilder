json.extract! contact, :id, :Name, :Email, :Comments, :created_at, :updated_at
json.url contact_url(contact, format: :json)
