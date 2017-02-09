json.extract! message, :id, :subject, :phone, :message, :name, :surname, :created_at, :updated_at
json.url message_url(message, format: :json)