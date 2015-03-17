class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :question, index: true
      t.string :content
      t.boolean :correct

      t.timestamps null: false
    end
    add_foreign_key :options, :questions
  end
end
