user = CreateAdminService.new.call
puts 'CREATED ADMIN USER: ' << user.email
City.create(name: "Prague", short_name: "Pg")
City.create(name: "Gdansk", short_name: "Gd")
City.create(name: "Berlin", short_name: "Br")
City.create(name: "Seattle", short_name: "Se")
City.create(name: "Washington", short_name: "Wa")
City.create(name: "Rome", short_name: "Rm")
City.create(name: "Moscow", short_name: "Mc")
City.create(name: "Helsinki", short_name: "He")
City.create(name: "Stockholm", short_name: "St")
City.create(name: "Oslo", short_name: "Os")
City.create(name: "Chicago", short_name: "Ch")
City.create(name: "New York", short_name: "Ny")
