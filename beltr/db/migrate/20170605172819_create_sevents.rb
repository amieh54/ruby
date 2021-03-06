class CreateSevents < ActiveRecord::Migration[5.1]
  def change
    create_table :sevents do |t|
      t.string :name
      t.date :date
      t.string :city
      t.string :state
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
