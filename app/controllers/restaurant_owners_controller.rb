class RestaurantOwnersController < ApplicationController
  def index
    @restaurant_owners = RestaurantOwner.all
  end

  def show
    @restaurant_owner = RestaurantOwner.find(params[:id])
  end

  def new
    @restaurant_owner = RestaurantOwner.new
  end

  def create
    @restaurant_owner = RestaurantOwner.new
    @restaurant_owner.name = params[:name]
    @restaurant_owner.last_name = params[:last_name]

    if @restaurant_owner.save
      redirect_to "/restaurant_owners", :notice => "Restaurant owner created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant_owner = RestaurantOwner.find(params[:id])
  end

  def update
    @restaurant_owner = RestaurantOwner.find(params[:id])

    @restaurant_owner.name = params[:name]
    @restaurant_owner.last_name = params[:last_name]

    if @restaurant_owner.save
      redirect_to "/restaurant_owners", :notice => "Restaurant owner updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant_owner = RestaurantOwner.find(params[:id])

    @restaurant_owner.destroy

    redirect_to "/restaurant_owners", :notice => "Restaurant owner deleted."
  end
end
