def photoPicker

	photographs = [

	  ['photo1', 'horizontal', 'pair'],

	  ['photo2', 'vertical', 'single'],

	  ['photo3', 'vertical', 'pair'],

	  ['photo4', 'horizontal', 'pair'],

	  ['photo5', 'horizontal', 'single'],

	  ['photo6', 'vertical', 'single'],

	  ['photo13', 'vertical', 'pair'],

	  ['photo14', 'vertical', 'single'],

	  ['photo16', 'horizontal', 'pair']

	 ]

	myPhoto = photographs.sample
	puts photographs.sample[0]+".jpg"
	return photographs.sample[0]+photographs.sample[1]+photographs.sample[2]
end

photoPicker

def photoMatcher(oldPhoto)
	myCurrentPhoto = photoPicker

	if myCurrentPhoto[1]==myNewPhoto[1] && myCurrentPhoto[2]==myNewPhoto[2] then
		puts myCurrentPhoto[0]+".jpg"+myNewPhoto[1]+".jpg"
	end
end

photoMatcher(photoPicker)