class AddUserToMyServices < ActiveRecord::Migration[6.1]
  def change
    add_reference :my_services, :user, null: false, foreign_key: true
  end
end
