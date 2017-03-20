json.extract! manuscript, :id, :repository, :call_number, :ms_format, :created_at, :updated_at
json.url manuscript_url(manuscript, format: :json)