class AddCoordinatesToHideouts < ActiveRecord::Migration[5.2]
  def change
    add_column :hideouts, :latitude, :float
    add_column :hideouts, :longitude, :float
  end
end
