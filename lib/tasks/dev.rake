desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do
  puts "Creating sample data..."

  if Rails.env.development?
    puts "Deleting the previous data..."
    Item.destroy_all
  end

  puts "Creating first item..."
  item_1 = Item.new
  item_1.link_url = "https://www.bvp.com/atlas/fintech-entrepreneurs-guide-to-creating-enterprise-value-starts-with-contribution-profit#:~:text=Gross%20margin%20is%20a%20well,with%20revenue%20or%20transaction%20volume"
  item_1.link_description = "Great article!"
  item_1.thumbnail_url = "https://fastly.picsum.photos/id/24/4855/1803.jpg?hmac=ICVhP1pUXDLXaTkgwDJinSUS59UWalMxf4SOIWb9Ui4"
  item_1.save

  puts "Creating second item..."
  item_2 = Item.new
  item_2.link_url = "https://www.linkedin.com/in/sara-thomas-236394192/"
  item_1.link_description = "My LinkedIn"
  item_1.thumbnail_url = "https://fastly.picsum.photos/id/6/5000/3333.jpg?hmac=pq9FRpg2xkAQ7J9JTrBtyFcp9-qvlu8ycAi7bUHlL7I"
  item_1.save
  puts "Done!"
end
