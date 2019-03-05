require 'airport'

describe Airport do

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
