class OptionEntriesController < ApplicationController

  # get options/new to render a form to creat new entry
  get '/option_entries/new' do 
    erb :'/option_entries/new' 
  end 

  # post option_entries to create a new option entry
  post '/option_entries' do 
    # I want to create a new option entry and save it to the DB
    # I only want to create an option entry if a user is logged in
    if !logged_in?
      redirect '/'
    end
    # I also only want to save the entry if it has some content
    if params[:content] != ""
      # create a new entry
      @option_entry = OptionEntry.create(ticker: params[:ticker], option_type: params[:option_type], profit_or_loss: params[:profit_or_loss], user_id: current_user.id)
      redirect "/option_entries/#{@option_entry.id}"
    else 
      redirect '/option_entries/new'
    end 
  end 

  # show route for an option entry


  # index route for all option entries
end 