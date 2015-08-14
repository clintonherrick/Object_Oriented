require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')


  get('/') do
    erb(:index)
  end


  get('/words') do
    @words = Word.all()
    erb(:words)
  end
