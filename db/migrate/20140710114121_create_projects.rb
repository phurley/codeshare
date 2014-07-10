class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.binary :archive
      t.references :user, index: true

      t.timestamps
    end
  end
end
