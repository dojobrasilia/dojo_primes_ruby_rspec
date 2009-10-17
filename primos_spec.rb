require 'rubygems'
require 'spec'
require 'prime_generator.rb'

describe "prime generation" do

	it "should work until 0" do
		lista = generate(0)
		lista.should == []
	end

	it "should work until 1" do
		lista = generate(1)
		lista.should == []
	end
	
	it "should work until 2" do
		lista = generate(2)
		lista.should == [2]
	end

	it "should work until 3" do
		lista = generate(3)
		lista.should == [2,3]
	end

	it "should work until 4" do
		lista = generate(4)
		lista.should == [2,3]
	end

	it "should work until 5" do
		lista = generate(5)
		lista.should == [2,3,5]
	end

	it "should work until 6" do
		lista = generate(6)
		lista.should == [2,3,5]
	end

	it "should work until 7" do
		lista = generate(7)
		lista.should == [2,3,5,7]
	end

	it "should work until 8" do
		lista = generate(8)
		lista.should == [2,3,5,7]
	end
	
	it "should work until 9" do
		lista = generate(9)
		lista.should == [2,3,5,7]
	end
	
	it "should work until 10" do
		lista = generate(10)
		lista.should == [2,3,5,7]
	end
	
	it "should work until 11" do
		lista = generate(11)
		lista.should == [2,3,5,7,11]
	end
	
	it "should work until 50" do
		lista = generate(50)
		lista.should == [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]
	end
	
	it "should terminate until 10000 and check some things" do
		begin
			lista = generate(10000)
		rescue
			fail("deu pau")
		end
		
		lista.should_not include(10000)
		lista.should_not include(1000)
		
		lista.should include(809)
		lista.should include(811)

	end
	
end