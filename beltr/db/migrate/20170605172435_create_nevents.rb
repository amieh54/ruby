class CreateNevents < ActiveRecord::Migration[5.1]
  def change
    create_table :nevents do |t|
      t.string :name
      t.date :date
      t.string :city
      t.string :state
      t.user :references

      t.timestamps
    end
  end
end
