class RemoveBirthplaceToPets < ActiveRecord::Migration[6.1]
  def change
    remove_column :pets, :birthplace, :integer
  end
end
