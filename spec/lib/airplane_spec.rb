require_relative "../../lib/airplane"

describe Airplane do
  let(:my_plane) { Airplane.new("cesna", 10, 150, 500) }
  describe "#initialization" do
    context "birth of a plane" do
      it "the type is cesna" do
        expect(my_plane.type).to eq("cesna")
      end
      it "the wing_loading is 10" do
        expect(my_plane.wing_loading).to eq(10)
      end
      it "the horsepower is 150" do
        expect(my_plane.horsepower).to eq(150)
      end
  end
end

  describe "#land" do
    context "about to land" do
      it "not even started though" do
        expect(my_plane.land).to eq("airplane not started, please start")
      end
      it "not even flying man" do
        my_plane.start
        expect(my_plane.land).to eq("airplane already on the ground")
      end
      it "already in the air" do
        my_plane.start
        my_plane.takeoff
        expect(my_plane.land).to eq("airplane landed")
      end
      it "not enough fuel" do
        my_plane.start
        my_plane.takeoff
        my_plane.fuel = 10
        expect(my_plane.land).to eq("15 fuel needed to land. we're gonna die!!!")
      end

    end
  end

  describe "#takeoff" do
    context "about to take off"
    it "the engine is not started" do
      expect(my_plane.takeoff).to eq("airplane not started, please start")
    end
    it "plane already started" do
      my_plane.start
      expect(my_plane.takeoff).to eq("airplane launched")
    end
    it "not enough fuel" do
      my_plane.fuel = 30
      expect(my_plane.takeoff).to eq("60 fuel needed to lanch. WE'RE STRANDED!")
    end
  end

  describe "#start" do
    context "airplane flight begins" do
      it "lifting off" do
        expect(my_plane.start).to eq("airplane started")
      end
      it "already" do
        my_plane.start
        expect(my_plane.start).to eq("airplane already started")
      end
      it 'not enough fuel' do
        my_plane.fuel = 0
        expect(my_plane.start).to eq("20 fuel needed to start. Engines down...")
      end
    end
  end
end
