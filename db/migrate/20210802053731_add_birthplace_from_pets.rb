class AddBirthplaceFromPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :birthplace, :string
  end
end
