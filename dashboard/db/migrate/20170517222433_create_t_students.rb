class CreateTStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :t_students do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.references :dojo, foreign_key: true

      t.timestamps
    end
  end
end
