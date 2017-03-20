class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.float :paper_height
      t.float :paper_width
      t.string :chain_lines
      t.string :format
      t.string :name
      t.text :result

      t.timestamps null: false
    end
  end
end
