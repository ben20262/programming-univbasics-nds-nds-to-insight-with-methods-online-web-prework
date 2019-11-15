require_relative 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds.each do |direct|
    name = direct[:name]
    total = 0
    direct[:movies].each do |movie|
      total += movie[:worldwide_gross]
    end
    result[name] = total
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end
