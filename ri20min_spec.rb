require_relative 'ri20min.rb' #load source code

describe MegaGreeter do
	context "When testing the MegaGreeter class" do

	  it "should say 'Hello World!' say_hi method without names" do
	    mg = MegaGreeter.new
	    expect(STDOUT).to receive(:puts).with('Hello World!')
	    #STDOUT.should_receive(:puts).with('World') obsolete syntax
	    mg.say_hi
	  end
	  
	  it "should say 'Hello Zeke' when only Zere's name present" do
	    mg = MegaGreeter.new
	    mg.names="zeke"
	    expect(STDOUT).to receive(:puts).with('Hello Zeke!')
	    mg.say_hi
	  end
	  
	  it "should say 'Hello Albert!\nHello Brenda!' when list of names" do
	     mg = MegaGreeter.new
	     mg.names = ["albert", "brenda"]
	     expect(STDOUT).to receive(:puts).with('Hello Albert!')
	     expect(STDOUT).to receive(:puts).with('Hello Brenda!')
	     mg.say_hi
	  end

	  it "should say 'Goodbye World. Come back soon!' on say_bye method w/o names" do
	    mg = MegaGreeter.new
	    expect(STDOUT).to receive(:puts).with('Goodbye World. Come back soon!')
	    mg.say_bye
	  end

	  it "should say 'Goodbye Zeke. Come back soon!' on say_bye method w/ 'Zeke' name" do
	    mg = MegaGreeter.new
	    mg.names = "zeke"
	    expect(STDOUT).to receive(:puts).with('Goodbye Zeke. Come back soon!')
	    mg.say_bye
	  end

	  it "should say 'Goodbye albert, brenda. Come back soon!' on say_bye method w/ list of names" do
	    mg = MegaGreeter.new
	    mg.names = ["albert", "brenda"]
	    expect(STDOUT).to receive(:puts).with('Goodbye albert, brenda. Come back soon!')
	    mg.say_bye
	  end

	end
end
