json.extract! booking, :id, :full_name, :start_date, :end_date, :confirmed, :price, :pet_description, :review, :user_id, :housekeeper_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
