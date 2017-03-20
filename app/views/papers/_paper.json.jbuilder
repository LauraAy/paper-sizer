json.extract! paper, :id, :paper_height, :paper_width, :chain_lines, :format, :name, :result, :created_at, :updated_at
json.url paper_url(paper, format: :json)