class CreatePublishers < ActiveRecord::Migration[5.1]
  def change
    create_table :publishers do |t|
      t.string :title
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
