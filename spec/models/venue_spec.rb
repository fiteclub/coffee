require "rails_helper"

RSpec.describe Venue, type: :model do
  it { is_expected.to have_many(:events).dependent(:destroy) }

  it { is_expected.to validate_presence_of(:foursquare_id) }

  context "with a fully valid factory" do
    subject { build(:venue) }

    it { is_expected.to validate_uniqueness_of(:foursquare_id) }
  end

  describe "#address" do
    # TODO: Remove this when address is added back to Venue
    it "returns nil (for now)" do
      venue = build(:venue)
      expect(venue.address).to be_nil
    end
  end
end
