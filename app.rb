require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')


get('/') do
  erb(:index)
end


get('/words') do
  @words = Word.all()
  erb(:words)
end

# added necessary require lines for your lib files at the top of this file