class ChangeDates < ActiveRecord::Migration[7.0]
  def change
    rename_table :dates, :events
  end
end
