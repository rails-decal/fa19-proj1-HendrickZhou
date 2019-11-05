class PokemonsController < ApplicationController
	def capture
		# where will give us a Relation class, not a object!
		# use first to get the object or save wont work
		# in fact find is better way
		pok = Pokemon.where(id: params[:id]).first
		# puts current_trainer
		pok.update(trainer_id: current_trainer.id)
		pok.save()

		redirect_to root_path
	end

	def damage
		pok = Pokemon.find(params[:id])
		curr_health = pok.health
		if curr_health <= 10
			pok.destroy
		else
			pok.update(health: pok.health - 10)
			pok.save
		end
		redirect_to trainer_path current_trainer.id
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
	    @pokemon = Pokemon.create(pokemon_params)
	    @pokemon.update(trainer_id: current_trainer.id, health: 100, level:  1)
	    if @pokemon.save
	    	redirect_to trainer_path current_trainer.id
	    else
	    	flash[:error] = @pokemon.errors.full_messages.to_sentence
	    	render new_path
	    end
	end


	private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def pokemon_params
      params.require(:pokemon).permit(:name, :ndex)
    end

end
