class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer = current_trainer
    pokemon.save
    redirect_to :root
  end

  def damage
    pokemon = Pokemon.find(params[:pokemon_id])
    pokemon.health = pokemon.health - 10
    if pokemon.health <= 0
      pokemon.destroy
    end
    if pokemon.health > 0
      pokemon.save
    end
    redirect_to "/trainers/" << pokemon.trainer_id.to_s
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    # @pokemon = Pokemon.new()
    @pokemon = Pokemon.new(params.require(:pokemon).permit(:name))
    @pokemon.level = 1
    @pokemon.health = 100
    @pokemon.trainer = current_trainer
    if @pokemon.save
      redirect_to "/trainers/" << current_trainer.to_s
    else
      redirect_to "/pokemon/new"
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end

  end
end
