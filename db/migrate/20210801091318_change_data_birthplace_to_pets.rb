class ChangeDataBirthplaceToPets < ActiveRecord::Migration[6.1]
  def change
    change_column :pets, :birthplace, 'integer USING CAST(birthplace AS integer)'
  end
end
