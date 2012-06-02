require "bumpy/version"

module Bumpy
  def self.bump_version(v)
    v.gsub(/(\d+)$/) { $1.next }
  end
end
