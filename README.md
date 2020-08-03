# PitchPerfect

A fun app to play with your voice to change it to sound like vader or make it slow.

## Introduction

The application is developed to meet the requirments for the first project in the udacity connect - iOS development course.
* Implmenting AVAudioRecorderDelegate
* Add Contraints to View Controller so content will fit in landscape and portrait view
* Create user flow of the appplication to follow udacity rubric grading

## Get Started

### Requirments
* IDE: XCode
* [Developer Account](https://developer.apple.com/) at Apple
* Optional: Physical device iPhone or iPad running iOS 13 or later

### Install

#### Command Line

Open terminal app and navigate to project folders
`$ cd /Users/user/project_folders`

Clone project repository
`$ git clone https://github.com/SamPaddock/PitchPerfect.git`

### Usage

1. Login using Udacity credential. While confirming credential, an activity progress spinner appers.
2. After successful login, the user is navigated to the Map and Table view, where 100 recent locations are shown as pins. Any pin selected has a URL than can be opened.
3. A user can add a pin, where they type a location that is then geocoded and is displayed on a map. They are also required to add a valid URL with the location.
4. Once the new pin is added, they are redirected to the map and table view, where they are reloaded to show the new pin added.

## Technology
AVAudioRecorder: to record and manipulate voice recording

## Sources
[Udacity](https://www.udacity.com/course/ios-developer-nanodegree--nd003)

## Licence
The content of this repository is licensed under a [Creative Commons Attribution License](https://creativecommons.org/licenses/by/3.0/us/) by Udacity
