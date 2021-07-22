class ChangeDateBreedToPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :breed, :string
    change_column :pets, :father_breed, :string
    change_column :pets, :mother_breed, :string
  end
end
