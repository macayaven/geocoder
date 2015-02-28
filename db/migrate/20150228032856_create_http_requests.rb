class CreateHttpRequests < ActiveRecord::Migration
  def change
    create_table :http_requests do |t|
      t.string :ip
      t.string :address

      t.timestamps
    end
  end
end
