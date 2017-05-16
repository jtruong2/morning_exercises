=begin
* eggs (1)
       * peanuts (2)
       * shellfish (4)
       * strawberries (8)
       * tomatoes (16)
       * chocolate (32)
       * pollen (64)
       * cats (128)
=end
class Allergy
  attr_reader :eggs, :peanuts, :shellfish, :strawberries,
              :tomatoes, :chocolate, :pollen, :cats
  def initialize
    @eggs = 1
    @peanuts = 2
    @shellfish = 4
    @strawberries = 8
    @tomatoes = 16
    @chocolate = 32
    @pollen = 64
    @cats = 128
  end
end
