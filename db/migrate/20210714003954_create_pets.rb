class CreatePets < ActiveRecord::Migration[6.1]
  def change
    create_table :pets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :dog_or_cat
      t.string :breed
      t.string :mother_breed
      t.string :father_breed
      t.string :birthplace
      t.date :birthday
      t.string :breeder_name
      t.string :mother_name
      t.string :father_name

      t.timestamps
    end
  end
end
