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
  laid   = params["laid_lines"]
  sizer = PaperSizer.new
  result = sizer.calculate height, width, chain, laid
  params["result"] = result
  erb :sizeit, locals: { "result": result }
end