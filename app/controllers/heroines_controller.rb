class HeroinesController < ApplicationController
  def index
    # if params[:search_by_power]
    #   @heroines=Heroine.search_by_power(params[:search_by_power])
    # else
      @heroines=Heroine.all
    # end
  end


  def show
    @heroine=Heroine.find(params[:id])
  end

  def new
    @powers = Power.all
    @heroine=Heroine.new
  end



  def create
    @heroine=Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to heroine_path(@heroine)
    else
      flash[:errors]=@heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

private

def heroine_params
  params.require(:heroine).permit(:name, :super_name, :search_by_power)
end

end
