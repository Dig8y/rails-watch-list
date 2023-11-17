class ListsController < ApplicationController
  def index
    @lists = List.all
    if params[:query].present?
      @lists = List.where("name LIKE '%#{params[:query]}%'")
      @message = "You searched for #{params[:query]}, we found #{@lists.length} out of #{List.all.count} lists on our website"
    else
      @lists = List.all
    end
    @list = List.new
  end

  def show
    set_list
    @bookmark = Bookmark.new
    @review = Review.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      redirect_to '/lists/index', status: :unprocessable_entity
    end
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :image_url)
  end

end
