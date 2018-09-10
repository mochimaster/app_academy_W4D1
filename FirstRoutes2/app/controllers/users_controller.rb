class UsersController < ApplicationController
  
  def index
    render plain: 'Im an index', status: 200
    # render json: params
  end
  
end
