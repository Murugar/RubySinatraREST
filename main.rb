require 'sinatra'
require 'json'




  # If a user get requests path /quote , return a quote. #
  get '/' do
      "Hello World"
  end
  get '/hi' do
      "Hello World"
  end
  get '/quote' do
    content_type :json
    { :quote => File.readlines("quote.txt").sample[0..-2], :author => 'Rayan Milkton' }.to_json
  end


