json.extract! pet, :id, :user_id, :name, :dog_or_cat, :breed, :mother_breed, :father_breed, :birthplace, :birthday, :breeder_name, :mother_name, :father_name, :created_at, :updated_at
json.url pet_url(pet, format: :json)
