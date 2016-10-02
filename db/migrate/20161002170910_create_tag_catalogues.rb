class CreateTagCatalogues < ActiveRecord::Migration
  def change
    create_table :tag_catalogues do |t|
      t.string :tag_content

      t.timestamps

    end
  end
end
