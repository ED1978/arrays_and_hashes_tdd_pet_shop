def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, amount)
  pet_shop[:admin][:pets_sold] += amount
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  pets_of_breed = []
  for x in pet_shop[:pets] do
    if x[:breed] == breed
      pets_of_breed.push(x)
    end
  end
  return pets_of_breed
end

def find_pet_by_name(pet_shop, pet_name)
  for x in pet_shop[:pets] do
    if x[:name] == pet_name
      pet = x
    end
  end
  return pet
end

def remove_pet_by_name(pet_shop, pet)
  for x in pet_shop[:pets]
    if x[:name] == pet
      pet_shop[:pets].delete(x)
    end
  end
end

def add_pet_to_stock(pet_shop, pet)
  pet_shop[:pets].push(pet)
end

def customer_cash(customer)
  return customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  return customer[:pets].length
end
