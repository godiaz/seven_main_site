class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :location
      t.string :client
      t.string :architect
      t.string :services
      t.text :content
      t.boolean :published, default: false

      t.timestamps
    end
  end
end
