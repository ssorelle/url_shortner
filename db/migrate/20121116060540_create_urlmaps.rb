class CreateUrlmaps < ActiveRecord::Migration
  def change
    create_table :urlmaps do |t|
      t.text :long_url
      t.string :short_url

      t.timestamps
    end
  end
end
