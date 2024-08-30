# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Product.create()

100.times do
    Product.create(
        name:   "Producto de prueba de precio#{Random.rand(100000)}",
        description: "Descripcion de prueba de precio #{Random.rand(100000)}",
        price:  1000 + Random.rand(100000)
    )
end

100.times do
    Product.create(
        name:   "Producto de prueba de creacion #{Random.rand(100000)}",
        description: "Descripcion de prueba de creacion #{Random.rand(100000)}",
        price:  999
    )
end

