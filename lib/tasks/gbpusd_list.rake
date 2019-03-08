namespace :gbpusd_list do
  desc "TODO"
  task gbpusd_load: :environment do
  
  GbpUsd.destroy_all
  	CSV.foreach("lib/assets/csv/GBP_TO_USD.csv", :headers =>true) do |row |
  		puts row.inspect
  		GbpUsd.create(date:row[0],spot_exchange_rate:row[1])
        end
        
  end

end
