namespace :books do
  desc "Seeds Categories"
  task seed_categories: :environment do
    categories.create!({
      title: "Information Technology"
    },
    {
      title: "Information Technology"
    }
      )
  end

end
