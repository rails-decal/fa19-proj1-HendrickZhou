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
end
