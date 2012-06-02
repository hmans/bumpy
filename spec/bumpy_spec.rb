require 'spec_helper'

describe Bumpy do
  describe ".bump_version" do
    def bump(v)
      subject.bump_version(v)
    end

    TEST_DATA = [
      ['1.0.0', '1.0.1'],
      ['1.0.9', '1.0.10'],
      ['1.0.5.pre9', '1.0.5.pre10'],
      ['12.0', '12.1'],
      ['1.2.3.dev.9', '1.2.3.dev.10']
    ]

    TEST_DATA.each do |from, to|
      it "correctly bumps #{from} to #{to}" do
        bump(from).should == to
      end
    end
  end
end
