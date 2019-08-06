class MallsController < ApplicationController
  def index
    @malls = Mall.all
    render :index
  end

  def new
    render :new_mall
  end

  def create
    mall = Mall.new(:name => params[:name])
    mall.save
    redirect_to '/'
  end



end
