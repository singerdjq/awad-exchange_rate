class CreateGbpUsds < ActiveRecord::Migration[5.2]
  def change
    create_table :gbp_usds do |t|
      t.string :date
      t.decimal :spot_exchange_rate

      t.timestamps
    end
  end
end
