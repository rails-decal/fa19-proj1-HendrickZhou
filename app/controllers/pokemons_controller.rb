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
end
