get '/' do
  @categories = Category.all
  erb :category
end

get '/categories/new' do
  erb :new
end

get '/categories/:id/articles' do
  @category = Category.find(params[:id])
  @articles = @category.articles
  erb :show
end

post '/categories' do
  #check if params is going through
  # raise params.inspect
  # create a new category
  Category.create(name: params[:name])
  redirect '/'
end

post '/categories/:id/articles' do
  Article.create(author: params[:author], title: params[:title], content: params[:content])
  redirect '/'
end
