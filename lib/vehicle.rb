class Vehicle
  define_method(:initialize) do |make, model, year|
    @year = year
    @make = make
  end

  define_method(:age) do
    current_year = Time.new().year()
    current_year.-(@year)
  end

  define_method(:worth_buying?) do
    american_brands = ["Ford", "Chrysler", "GM"]
    american_brands.include?(@make).&(self.age().<(16))
  end
end
