#
# Be sure to run `pod spec lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = "mozu-ios-sdk"
  s.version          = "1.18.15266.2"
  s.summary          = "A short description of mozu-ios-sdk."
  s.description      = <<-DESC
                       An optional longer description of mozu-ios-sdk

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "http://EXAMPLE/NAME"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Noel Artiles" => "noel_artiles@volusion.com" }
  s.public_header_files = ""
  s.source           = { :git => "https://github.com/MrLanks/mozu-ios-sdk.git" }
  #s.source           = { :path => '~/projects/git/mozu-ios-sdk' }
  s.social_media_url = 'https://twitter.com/NAME'

  # s.platform     = :ios, '5.0'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true

  s.header_mappings_dir = 'MozuApi'
  # s.header_dir = 'Classes'
  s.source_files = 'MozuApi/*.{m,h}'


  s.ios.exclude_files = 'MozuApi/osx'
  s.osx.exclude_files = 'MozuApi/ios'
  # s.public_header_files = 'Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  s.dependency 'JSONModel'
  s.dependency 'CocoaLumberjack'

  s.subspec 'Cache' do |ss|
    ss.source_files = 'MozuApi/Cache/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Cache/**/*.h'
  end

  s.subspec 'Clients' do |ss|
    ss.source_files = 'MozuApi/Clients/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Clients/**/*.h'
  end

  s.subspec 'Contracts' do |ss|
    ss.source_files = 'MozuApi/Contracts/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Contracts/**/*.h'
  end

  s.subspec 'Resources' do |ss|
    ss.source_files = 'MozuApi/Resources/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Resources/**/*.h'
  end

  s.subspec 'Security' do |ss|
    ss.source_files = 'MozuApi/Security/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Security/**/*.h'
    ss.dependency 'mozu-ios-sdk/Contracts'
  end

  s.subspec 'Urls' do |ss|
    ss.source_files = 'MozuApi/Urls/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Urls/**/*.h'
  end

  s.subspec 'Utilities' do |ss|
    ss.source_files = 'MozuApi/Utilities/**/*.{m,h}'
    ss.public_header_files = 'MozuApi/Utilities/**/*.h'
  end

end
