#
# Be sure to run `pod lib lint LTTB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LTTB'
  s.version          = '0.1.0'
s.summary          = 'Largest Triangle Three Buckets downsampling algorithm in Swift.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC

Largest Triangle Three Buckets downsampling algorithm in Swift.

Original version by Sveinn Steinarsson(https://github.com/sveinn-steinarsson/highcharts-downsample)

Author : Guillaume Beal

The visualization isn’t meant to give you access to the individual values of tens of thousands of data points on a line, it’s meant to show you how that data looks and is trending over time."(http://blackops.io/blog/2014/05/time-series-graphs-and-downsampling/)
This algorithm shrinks a timeserie and keeps the visual apsect of the serie.

Pre-process your time serie with LTTB in order to display a thousands of points on a Graph.

Works well with Charts API https://github.com/danielgindi/Charts
					DESC

  s.homepage         = 'https://github.com/GuillaumeBeal/LTTB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Guillaume Béal' => 'guillaume.bvl@gmail.com' }
  s.source           = { :git => 'https://github.com/GuillaumeBeal/LTTB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/guillaumebvl

  s.ios.deployment_target = '8.0'

  s.source_files = 'LTTB/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LTTB' => ['LTTB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
  # s.dependency 'AFNetworking', '~> 2.3'
end
