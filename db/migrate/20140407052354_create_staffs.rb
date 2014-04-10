class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.text :description
      t.string :cis_page
      t.string :personal_page
      t.string :image

      t.timestamps
    end
  end
end
