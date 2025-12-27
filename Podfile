platform :ios, '15.0'

ENABLE_USER_SCRIPT_SANDBOXING = 'NO'

flutter_application_path = '../flutter_module'

load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

target 'iOSWithFlutter' do
  use_frameworks!
  install_all_flutter_pods(flutter_application_path)
end

#post_install do |installer|
 # flutter_post_install(installer)
#end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_USER_SCRIPT_SANDBOXING'] = 'NO'
	flutter_post_install(installer)
    end
  end
end