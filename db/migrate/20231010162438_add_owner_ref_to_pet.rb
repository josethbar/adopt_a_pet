class AddOwnerRefToPet < ActiveRecord::Migration[7.0]
  def change
    add_reference :pets, :Owner, null: false, foreign_key: true
    add_reference :pets, :Animal, null: false, foreign_key: true
  end
end
