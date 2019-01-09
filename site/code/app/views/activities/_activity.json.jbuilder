json.extract! activity, :id, :name, :category, :tags, :status, :story_points, :created_at, :updated_at
json.url activity_url(activity, format: :json)
