json.extract! team, :id, :name, :start_time, :end_time, :description, :created_at, :updated_at
json.url team_url(team, format: :json)
