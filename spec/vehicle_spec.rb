require('rspec')
require('vehicle')

describe(Vehicle) do
  describe('#age') do
    it("returns the vehicles age") do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.age()).to(eq(15))
    end
  end

  describe('#worth_buying?') do
    it('returns false when the vehicle is not american made and younger than 16 years') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2000)
      expect(test_vehicle.worth_buying?()).to(eq(false))
      end
      it('returns true when a vehicle is american made and younger than 16 years') do
        test_vehicle = Vehicle.new("Ford", "Mustang", 2001)
        expect(test_vehicle.worth_buying?()).to(eq(true))
      end
    end

end
