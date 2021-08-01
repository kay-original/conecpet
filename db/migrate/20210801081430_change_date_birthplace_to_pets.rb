class ChangeDateBirthplaceToPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :birthplace, :string
  end
end
