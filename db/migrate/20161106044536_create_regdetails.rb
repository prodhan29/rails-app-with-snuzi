class CreateRegdetails < ActiveRecord::Migration[5.0]
  def change
    create_table :regdetails do |t|
      t.references :user, foreign_key: true
      t.references :semester, foreign_key: true
      t.references :course, foreign_key: true
      t.decimal :gpa, :precision=> 6, :scale => 2

      t.timestamps
    end
  end
end
