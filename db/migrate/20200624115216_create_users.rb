class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :Username
      t.string :FullName
      t.text :Photo
      t.text :CoverImage

      t.timestamps
    end
  end
end
