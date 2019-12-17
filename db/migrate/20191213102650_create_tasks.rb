class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text    :text 
      t.timestamps    null: true
    end
  end
end
