require 'pry'
class Allergy

  def find_allergy(score)
    allergies = {'cats'=>128, 'pollen'=>64, 'chocolate'=>32, 'tomatoes'=>16, 'strawberries'=>8,
      'shellfish'=>4, 'peanuts'=>2, 'eggs'=>1}
    score = score
    list = []
    allergies.each do |key, value|
      if score - value > -1
        list << key
        score -= value
      end
    end
    list
  end

end
