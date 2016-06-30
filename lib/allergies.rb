class String
  define_method(:allergies) do
    allergens = {1 => "eggs", 2 => "peanuts", 4 => "shellfish", 8 => "strawberries", 16 => "tomatoes", 32 => "chocolate", 64 => "pollen", 128 => "cats"}
    number = self.to_i
    allergensKeys = allergens.keys.reverse
    resultsArray = []
    allergensKeys.each do |key|
      if (number - key) >= 0
        resultsArray.push(allergens.fetch(key))
        number -= key
      end
    end
    resultsArray.join(" and ")
  end
end
