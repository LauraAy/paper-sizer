# If you're using bundler, you will need to add this
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'bundler/setup'
require 'lib/paper_sizer'

require 'sinatra'

get '/' do
  erb :index
end

post '/sizeit' do
  height = params["paper_height"]
  width  = params["paper_width"]
  chain  = params["chain_lines"]
  deckle = params["deckle"]

  sizer = PaperSizer.new
  matches  = sizer.find_matches height, width
  if matches.length == 0
    result = "Those dimensions don't match any known paper size."
  elsif matches.length  == 1
    result = "#{matches[0]}"
  else
    matches = sizer.query_lines chain
    if matches.length == 1
      result = "#{matches[0]}"
    else
      matches = sizer.query_edge deckle
      if matches.length == 1
        result = "#{matches[0]}"
      elsif matches.length == 2
        result = sizer.compare_two_matches
      else
        result = "It could be one of these three: #{matches[0]}, #{matches[1]}, or #{matches[2]}"
      end
    end
  end
  params["result"] = result
  erb :sizeit, locals: params
end