json.extract! appointment, :id, :appointmment_date, :worker_id, :medical_center_type_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
