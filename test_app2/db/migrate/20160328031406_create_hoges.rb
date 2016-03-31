class CreateHoges < ActiveRecord::Migration
  def change
    create_table :hoges do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
