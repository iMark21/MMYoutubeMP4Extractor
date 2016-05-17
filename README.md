# MMYoutubeMP4Extractor

[![CI Status](http://img.shields.io/travis/Juan Miguel Marques Morilla/MMYoutubeMP4Extractor.svg?style=flat)](https://travis-ci.org/Juan Miguel Marques Morilla/MMYoutubeMP4Extractor)
[![Version](https://img.shields.io/cocoapods/v/MMYoutubeMP4Extractor.svg?style=flat)](http://cocoapods.org/pods/MMYoutubeMP4Extractor)
[![License](https://img.shields.io/cocoapods/l/MMYoutubeMP4Extractor.svg?style=flat)](http://cocoapods.org/pods/MMYoutubeMP4Extractor)
[![Platform](https://img.shields.io/cocoapods/p/MMYoutubeMP4Extractor.svg?style=flat)](http://cocoapods.org/pods/MMYoutubeMP4Extractor)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MMYoutubeMP4Extractor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MMYoutubeMP4Extractor'
```

and Then add this line to obtain the MP4 url:

```ruby
[[MMYoutubeMP4Extractor sharedInstance] mp4FromYoutubeURL:url_youtube_video completionBlock:^(NSURL *mp4Url, NSError *error) {

}];
```

## Author

Juan Miguel Marques Morilla, marques.jm@icloud.com

## License

MMYoutubeMP4Extractor is available under the MIT license. See the LICENSE file for more info.
