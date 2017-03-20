class CreateManuscripts < ActiveRecord::Migration
  def change
    create_table :manuscripts do |t|
      t.string :repository
      t.string :call_number
      t.string :ms_format

      t.timestamps null: false
    end
  end
end
