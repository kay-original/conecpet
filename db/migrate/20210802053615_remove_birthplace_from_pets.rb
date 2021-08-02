class RemoveBirthplaceFromPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :birthplace, :string
  end
end
