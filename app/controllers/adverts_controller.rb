class AdvertsController < ApplicationController
  def index
    @adverts = Advert.all
  end

  def show
    @advert = Advert.find(params[:id])
  end

  def new
    @advert = Advert.new
  end

  def create
    @advert = Advert.new(params[:advert])
    if @advert.save
      redirect_to @advert, :notice => "Successfully created advert."
    else
      render :action => 'new'
    end
  end

  def edit
    @advert = Advert.find(params[:id])
  end

  def update
    @advert = Advert.find(params[:id])
    if @advert.update_attributes(params[:advert])
      redirect_to @advert, :notice  => "Successfully updated advert."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @advert = Advert.find(params[:id])
    @advert.destroy
    redirect_to adverts_url, :notice => "Successfully destroyed advert."
  end
end
