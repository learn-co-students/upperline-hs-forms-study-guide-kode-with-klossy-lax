post '/results' do
  hood = Neighborhood.new(params[:location])
  hood.get_recommended_venues
  @restaurants = hood.recommended_venues
  erb :results
end