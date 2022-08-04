class CreateDates < ActiveRecord::Migration[7.0]
  def change
    create_table :dates do |t|
      t.string :task
      t.date :date
      t.references :calendar, foreign_key: true
      t.timestamps
    end
  end
end
