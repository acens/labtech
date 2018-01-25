class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :nome
      t.text :descricao
      t.date :data
      t.string :professor
      t.string :requisitos
      t.string :ementa

      t.timestamps
    end
  end
end
