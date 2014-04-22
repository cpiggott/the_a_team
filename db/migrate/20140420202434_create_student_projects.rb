class CreateStudentProjects < ActiveRecord::Migration
  def change
    create_table :student_projects do |t|
      t.string :student
      t.string :time
      t.string :topic
      t.string :description

      t.timestamps
    end
  end
end
