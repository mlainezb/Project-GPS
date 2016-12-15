json.extract! vehicle, :id, :name, :patent, :model_vh, :picture_vh, :color_marker, :status_vh, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)