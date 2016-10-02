class TagCataloguesController < ApplicationController
  def index
    @tag_catalogues = TagCatalogue.all
  end

  def show
    @tag_catalogue = TagCatalogue.find(params[:id])
  end

  def new
    @tag_catalogue = TagCatalogue.new
  end

  def create
    @tag_catalogue = TagCatalogue.new
    @tag_catalogue.tag_content = params[:tag_content]

    if @tag_catalogue.save
      redirect_to "/tag_catalogues", :notice => "Tag catalogue created successfully."
    else
      render 'new'
    end
  end

  def edit
    @tag_catalogue = TagCatalogue.find(params[:id])
  end

  def update
    @tag_catalogue = TagCatalogue.find(params[:id])

    @tag_catalogue.tag_content = params[:tag_content]

    if @tag_catalogue.save
      redirect_to "/tag_catalogues", :notice => "Tag catalogue updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @tag_catalogue = TagCatalogue.find(params[:id])

    @tag_catalogue.destroy

    redirect_to "/tag_catalogues", :notice => "Tag catalogue deleted."
  end
end
