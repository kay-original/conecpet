class ChangeDateMotherBreedToPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :breed, :integer
    change_column :pets, :father_breed, :integer
    change_column :pets, :mother_breed, :integer
  end
end
