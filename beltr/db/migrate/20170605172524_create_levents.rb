class CreateLevents < ActiveRecord::Migration[5.1]
  def change
    create_table :levents do |t|
      t.string :name
      t.date :date
      t.string :city
      t.string :state
      t.User :references

      t.timestamps
    end
  end
end
