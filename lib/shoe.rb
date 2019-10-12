class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if !BRANDS.include? brand
      BRANDS << brand 
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(single_brand)
    @brand = single_brand
    if !BRANDS.include? single_brand #checking to see if a unique brand is included
      BRANDS << single_brand 
    end
  end
  
end