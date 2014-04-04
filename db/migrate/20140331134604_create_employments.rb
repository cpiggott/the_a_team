class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.text :position
      t.text :company
      t.text :description

      t.timestamps
    end
  end
end
