# MMYoutubeMP4Extractor

`MMYoutubeMP4Extractor` provides an easy way to obtain MP4 URL for your iOS apps by providing a YouTube URL.

This library uses library from [RMYouTubeExtractor](https://github.com/runmad/RMYouTubeExtractor) by [Rune Madsen](https://github.com/runmad) - allowing you to just extract the metadata by providing a Youtube ID. 

[![CI Status](http://img.shields.io/travis/Juan Miguel Marques Morilla/MMYoutubeMP4Extractor.svg?style=flat)](https://travis-ci.org/Juan Miguel Marques Morilla/MMYoutubeMP4Extractor)
[![Version](https://img.shields.io/cocoapods/v/MMYoutubeMP4Extractor.svg?style=flat)](http://cocoapods.org/pods/MMYoutubeMP4Extractor)
[![License](https://img.shields.io/cocoapods/l/MMYoutubeMP4Extractor.svg?style=flat)](http://cocoapods.org/pods/MMYoutubeMP4Extractor)
[![Platform](https://img.shields.io/cocoapods/p/MMYoutubeMP4Extractor.svg?style=flat)](http://cocoapods.org/pods/MMYoutubeMP4Extractor)

## Requirements

- iOS 7 
- ARC


## Installation

MMYoutubeMP4Extractor is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MMYoutubeMP4Extractor'
```

and Then add this line to obtain the MP4 url:

```objc
[[MMYoutubeMP4Extractor sharedInstance] mp4FromYoutubeURL:url_youtube_video completionBlock:^(NSURL *mp4Url, NSError *error) {

}];
```
The instance returns a NSURL with MP4 URL

Don’t forget to check for empty dictionary / errors.

### Demo project

See demo project for an example of how to use the extractor.

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Author

Juan Miguel Marques Morilla, marques.jm@icloud.com

## License

MMYoutubeMP4Extractor is available under the MIT license. See the LICENSE file for more info.
