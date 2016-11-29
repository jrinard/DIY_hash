require('rspec')
require('my_hash')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
  describe("#mHkey") do
    it("return true if the key has a value in the hash") do
      test_hash= MyHash.new()
      test_hash.myStore("bird", "")
      expect(test_hash.mHval("bird")).to(eq("bird has no value"))
    end
end

end
