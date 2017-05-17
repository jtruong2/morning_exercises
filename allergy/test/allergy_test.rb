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

  def test_can_find_one_allergy
    allergy = Allergy.new
    assert_equal ['shellfish'], allergy.find_allergy(4)
  end

  def test_can_find_multiple_allergies
    allergy = Allergy.new
    list_of_allergies = ['pollen', 'chocolate', 'tomatoes', 'peanuts', 'eggs']
    assert_equal list_of_allergies, allergy.find_allergy(115)
  end

  def test_can_find_all_allergies
    allergy = Allergy.new
    list_of_allergies = ['cats','pollen', 'chocolate','tomatoes','strawberries','shellfish','peanuts','eggs']
    assert_equal = list_of_allergies, allergy.find_allergy(255)
  end
end
