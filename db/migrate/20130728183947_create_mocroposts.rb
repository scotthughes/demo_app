class CreateMocroposts < ActiveRecord::Migration
  def change
    create_table :mocroposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
