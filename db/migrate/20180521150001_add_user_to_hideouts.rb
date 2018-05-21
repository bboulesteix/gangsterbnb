class AddUserToHideouts < ActiveRecord::Migration[5.2]
  def change
    add_reference :hideouts, :user, foreign_key: true
  end
end
