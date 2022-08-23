require 'csv'

csv = Rails.root.join('db', 'fixtures', 'csv', 'license.csv')

license_params = []

CSV.foreach(csv, headers: true) do |row|
  category = Category.find_by!(en_name: row['category_en_name'])
  genre = category.genres[row['genre_order_num'].to_i - 1]
  license_params << {
    category_id: category.id,
    genre_id: genre.id,
    name: row['license_name']
  }
end

License.seed(license_params)

