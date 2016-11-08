require 'pry'
class TopsController < ApplicationController
  def new
    @top = Top.new
  end

  def create
    # binding.pry
    @top = Top.new(shirt: params[:top][:shirt], overshirt: params[:top][:overshirt], jacket: params[:top][:jacket])
    @top.save
    redirect_to top_path(@top)
  end

  def edit
  end

  def show
    @top = Top.find(params[:id])
  end

  def index
  end
end
