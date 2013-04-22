require "thor"

class Ripple < Thor
  include Thor::Actions

  def self.source_root
    File.expand_path "../../..", __FILE__
  end

  desc "update the nugets", "runs ripple update"
  def update
    `#{Ripple.source_root}/buildsupport/ripple.exe update`
    move_files
  end

  private 

  def move_files
     Dir.glob("*/packages/**tools").each do |tool|
       puts /packages\/(\w+)\/tools/.match(tool)[0]

     end
  end

end

