class CreateBukus < ActiveRecord::Migration[6.0]
  def change
    create_table :bukus do |t|
      t.string :penulis
      t.string :judul
      t.string :kota
      t.string :penerbit
      t.integer:tahun
      t.timestamps null: false
    end
  end
end
