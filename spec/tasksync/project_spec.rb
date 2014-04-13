require 'spec_helper'
require 'test/unit/assertions'

describe TaskSync::Project do

  context 'creation' do
    let(:project) { TaskSync::Project.new }
    subject { project }

    it 'should allow setting of provider and title' do
      project.provider = :Trello
      expect(project.provider).to eq :Trello
      project.name = 'test'
      expect(project.name).to eq 'test'
      expect(project.priority?).to be_falsey
    end

    it_behaves_like 'an ActiveModel'

  end

  context 'creation with init attributes' do

    skip

    let(:project) { TaskSync::Project.new(provider: :Trello, name: 'test') }
    subject { project }

    its(:provider) { should eq :Trello }
    its(:name) { should eq 'test' }

    it { expect(project.priority?).to be_falsey }

  end

  context 'loading' do
    let(:project) { TaskSync::Project.get(provider: :Trello, name: 'foo_board') }
    subject { project }

    its(:tasks) { should_not be_empty }

  end

end