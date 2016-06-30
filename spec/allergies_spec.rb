require("sinatra")
require('capybara/rspec')
require("allergies.rb")

describe("String#allergies") do
  it("will return a word for inputed number") do
    expect("128".allergies).to(eq("cats"))
  end
  it("will return multiple words for inputed number not in hash") do
    expect("129".allergies).to(eq("cats and eggs"))
  end
  it("will return multiple words for inputed number including 3 allergies") do
    expect("67".allergies).to(eq("pollen and peanuts and eggs"))
  end
end
