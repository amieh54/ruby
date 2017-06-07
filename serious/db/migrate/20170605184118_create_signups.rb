class CreateSignups < ActiveRecord::Migration[5.1]
  def change
    create_table :signups do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
