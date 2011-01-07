require 'rake'
require 'fileutils'

module MozNav
  module Tasks
    extend self

    def symlink_assets
      raise "You must set ASSET_ROOT for this task" if ENV['ASSET_ROOT'].to_s == ''
      host_app_asset_root = File.expand_path(ENV['ASSET_ROOT'])

      MozNav::AssetRoot.children(:full_path).each do |moz_nav_path|
        host_app_path = File.join(host_app_asset_root, File.basename(moz_nav_path))
        FileUtils.mkdir_p(host_app_path)
        File.symlink(moz_nav_path, File.join(host_app_path, 'moz_nav'))
      end
    end
  end
end

