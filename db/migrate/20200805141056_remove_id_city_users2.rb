class RemoveIdCityUsers2 < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :id_city
  end
end
