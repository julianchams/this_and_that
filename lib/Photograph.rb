class Photopair
	attr_accessor :firstphoto, :secondphoto

	PHOTOGRAPHS = [
	  ['curiosity_1', 'horizontal', 'pair'],
	  ['curiosity_2', 'vertical', 'single'],
	  ['curiosity_3', 'vertical', 'pair'],
	  ['curiosity_4', 'horizontal', 'pair'],
	  ['curiosity_5', 'horizontal', 'single'],
	  ['curiosity_6', 'vertical', 'single'],
	  ['curiosity_7', 'vertical', 'single'],
	  ['curiosity_8', 'vertical', 'single'],
	  ['curiosity_9', 'vertical', 'single'],
	  ['curiosity_10', 'vertical', 'single'],
	  ['curiosity_11', 'vertical', 'single'],
	  ['curiosity_12', 'vertical', 'single'],	  
	  ['curiosity_13', 'vertical', 'pair'],
	  ['curiosity_14', 'vertical', 'single'],
	  ['curiosity_15', 'vertical', 'single'],
	  ['curiosity_16', 'horizontal', 'pair'],
	  ['curiosity_17', 'vertical', 'single'],
	  ['curiosity_18', 'vertical', 'single'],
	  ['curiosity_19', 'horizontal', 'single'],
	  ['curiosity_20', 'vertical', 'pair'],
	  ['curiosity_21', 'vertical', 'single'],
	  ['curiosity_22', 'vertical', 'single'],
	  ['curiosity_23', 'vertical', 'pair'],
	  ['curiosity_24', 'vertical', 'single'],
	  ['curiosity_25', 'horizontal', 'single'],
	  ['curiosity_26', 'horizontal', 'pair'],
	  ['curiosity_27', 'vertical', 'pair'],
	  ['curiosity_28', 'horizontal', 'pair'],
	  ['curiosity_29', 'horizontal', 'single'],
	  ['curiosity_30', 'horizontal', 'single'],
	  ['curiosity_31', 'vertical', 'single'],
	 ]

	def initialize
		@firstphoto = getPhoto
		@secondphoto = getSecondPhoto(@firstphoto)
	end

	def getPhoto	
		myPhoto = PHOTOGRAPHS.sample
		puts myPhoto
		return myPhoto
	end

	def getSecondPhoto(firstPhoto)
		myCurrentPhoto = getPhoto
		if myCurrentPhoto[1]==firstPhoto[1] && myCurrentPhoto[2]==firstPhoto[2] && myCurrentPhoto[0]!=firstPhoto[0]then
			puts myCurrentPhoto
			return  myCurrentPhoto
		else
			getSecondPhoto(firstphoto)
		end	
	end
end