class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :fName
      t.string :lName
      t.string :genre
      t.datetime :dobirth
      t.datetime :dodeath

      t.timestamps
    end
  end
end
