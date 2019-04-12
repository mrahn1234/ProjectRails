class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      
      t.integer :verify, default: 0
      t.datetime :datefrom
      t.datetime :dateto
      t.integer :number

      
      t.references :user, foreign_key: true
      t.references :book, foreign_key: true
      t.timestamps
    end
  end
end
