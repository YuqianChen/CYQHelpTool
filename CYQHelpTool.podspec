#
#  Be sure to run `pod spec lint TestGitDemo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "CYQHelpTool"
  s.version      = "1.0.0"
  s.summary      = "This is a helpTool"


  s.description  = <<-DESC
it is a test Demo this is a test Demo,and it is implemented by OC
                   DESC

  s.homepage     = "https://github.com/YuqianChen/CYQHelpTool"

  s.license      = "MIT"

  s.author             = { "chenyuqian" => "1527546570@qq.com" }
  s.source = { :git => "https://github.com/YuqianChen/CYQHelpTool.git", :tag => "1.0.0"}
  s.requires_arc = true
  s.ios.deployment_target = '8.0'
  s.source_files = "CYQHelpTool", "*.{h,m}"


end
