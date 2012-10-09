class Version < Admin::Version
  attr_accessible :deleted_at, :flag, :name

  def self.now
    now_version = Version.find_by_flag(true)
    now_version.name unless now_version.nil?
  end
end
