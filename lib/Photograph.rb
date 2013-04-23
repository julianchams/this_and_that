
class Photograph
  def initialize(orientation, composition)
    @orientation = orientation
    @composition = composition
  end
end


  photo1 = Photograph.new('horizontal', 'pair') {file "curiosity1.jpg"}

  photo2 = Photograph.new('vertical', 'single') {file "curiosity2.jpg"}

  photo3 = Photograph.new('vertical', 'pair') {file "curiosity3.jpg"}

  photo4 = Photograph.new('horizontal', 'pair') {file "curiosity4.jpg"}

  photo5 = Photograph.new('horizontal', 'single') {file "curiosity5.jpg"}

  photo6 = Photograph.new('vertical', 'single') {file "curiosity6.jpg"}

  photo13 = Photograph.new('vertical', 'pair') {file "curiosity1.jpg"}

  photo14 = Photograph.new('vertical', 'single') {file "curiosity1.jpg"}

  photo16 = Photograph.new('horizontal', 'pair') {file "curiosity16.jpg"}

class Matcher
	def pickPhoto
	  nums = [1,2,3,4,5,6,13,14,16]
	  photoNum = nums.sample
	  puts "photo" + photoNum.to_s
	  return photoNum
	end


	def display(pickPhoto)
		Photograph.orientation_get(@orientation)
		if Photograph.orientation==horizontal
			puts "I am horizontal"
		else
			puts "I am vertical"
		end
	end