describe Fastlane::Actions::TiBuildAppAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The ti_build_app plugin is working!")

      Fastlane::Actions::TiBuildAppAction.run(nil)
    end
  end
end
