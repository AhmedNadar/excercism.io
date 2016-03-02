class Allergies

  ALLERGIES = { 'eggs' => 1,
    'peanuts' => 2,
    'shellfish' => 4,
    'strawberries' => 8,
    'tomatoes' => 16,
    'chocolate' => 32,
    'pollen' => 64,
    'cats' => 128
    }

  def initialize(score)
    @score = score
  end

  def allergic_to?(allergy_type)
    list.include?(allergy_type)
  end

  def list
    calculate_allergies.reverse
  end

  def calculate_allergies
    allergy = []
    (0..7).reverse_each do |i|
      if @score & 2**i > 0
        allergy << ALLERGIES.key(2**i)
      end
    end
    allergy
  end

end
