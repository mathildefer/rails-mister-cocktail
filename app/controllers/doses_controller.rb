class DosesController < ApplicationController
   def new
    @ingredients = Ingredient.all
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @ingredient = Ingredient.find(params[:dose][:ingredient_id].first.to_i)
    @dose = Dose.new(
      description: params[:dose][:description],
      cocktail: @cocktail,
      ingredient: @ingredient
    )
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @ingredients = Ingredient.all
      render :new
    end
  end

  # def destroy
  #   @dose = find(:id)
  #   @dose.destroy
  #   redirect_to cocktail_path(@cocktail)
  # end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end
end
