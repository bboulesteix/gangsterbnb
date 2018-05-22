class AddPhotoToHideouts < ActiveRecord::Migration[5.2]
  def change
    add_column :hideouts, :photo, :string
  end
end
