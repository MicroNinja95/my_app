class AddColumsToBooks < ActiveRecord::Migration[5.1]
  def change
    add_reference :books, :category, foreign_key: true
    add_reference :books, :publisher, foreign_key: true
  end
end
