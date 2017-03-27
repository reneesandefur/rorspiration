class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :user_id
      t.text :picture
      t.text :description
      t.text :github
      t.text :app_link
      t.timestamps
    end
  end
end
