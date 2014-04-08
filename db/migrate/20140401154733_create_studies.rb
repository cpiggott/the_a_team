class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.text :name
      t.datetime :date
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
