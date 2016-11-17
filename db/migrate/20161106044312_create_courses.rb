class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.decimal :credit,:precision => 6, :scale => 2
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
