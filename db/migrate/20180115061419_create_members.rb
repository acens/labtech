class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.string :name
      t.text :description
      t.attachment :photo
      t.string :email

      t.timestamps
    end
  end
end
