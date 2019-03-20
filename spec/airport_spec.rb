require 'airport'

describe Airport do

  describe '#land_plane' do

    it { is_expected.to respond_to :land_plane }

    it "allows a plane to land" do
      expect(subject).to respond_to(:land_plane).with(1).argument
    end

    it "shows that there is a plane at the airport" do
      plane = Plane.new
      subject.land_plane(plane)
      expect(subject.planes[0]).to eq plane
    end

  end

  describe '#take_off' do

    it { is_expected.to respond_to :take_off }

    it "allows a plane to take off" do
      plane = Plane.new
      subject.land_plane(plane)
      expect(subject).to respond_to(:take_off)
    end

    it "confirms that plane is no longer in airport" do
      plane = Plane.new
      subject.land_plane(plane)
      subject.take_off
      expect(subject.planes[-1]).to eq nil
    end
  end

end
