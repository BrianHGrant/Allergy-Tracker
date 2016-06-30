require('sinatra')
require('sinatra/reloader')
require('./lib/allergies.rb')
also_reload('lib/**.*.rb')

get('/') do
  erb(:form)
end

get('/results') do
  erb(:results)
end
