=begin
1. What am I buiding?
  Take the numeric score and translate it back the allergens that the patient is allergic to
2. Why am I building it?
  I'm building it so I can determine what a single person is allergic to
3. How will I know it works?
  A list of allergy names will return based on score
  The score of each individual item will add up to the score
=end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/allergy'
require 'pry'

class AllergyTest < Minitest::Test
  def test_type_of_class
    allergy = Allergy.new
    assert_equal Allergy, allergy.class
  end

  def test_can_read_attributes_and_their_values
    allergy = Allergy.new
    assert_equal 1, allergy.eggs
    assert_equal 2, allergy.peanuts
    assert_equal 4, allergy.shellfish
    assert_equal 8, allergy.strawberries
    assert_equal 16, allergy.tomatoes
    assert_equal 32, allergy.chocolate
    assert_equal 64, allergy.pollen
    assert_equal 128, allergy.cats
  end

end
