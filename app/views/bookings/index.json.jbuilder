json.array!(@bookings) do |booking|
  json.extract! booking, :user_id, :room_id, :start, :title, :description, :start_time, :end_time
  json.url booking_url(booking, format: :json)
end
