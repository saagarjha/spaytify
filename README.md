# Spaytify

## Introduction
Spotify, as a whole, is great. 

What isn't great, however is a specific behavior of the OS X app: namely, Spotify's abuse of bouncing the dock icon and badging the dock icon for every social/playlist update that comes through.

A [thread requesting an option to disable this behavior](https://community.spotify.com/t5/Spotify-Ideas/Let-users-turn-off-some-or-all-desktop-notifications-e-g-quot/idi-p/132114) has been running for two years now, and remains ignored by Spotify. I'm sure they are quite busy with other features, but it seems like they're dragging their feet on this because they benefit from 'engaging' (*gag*) the user more by annoying them.

This is unacceptable behavior: it doesn't put the user first.

In anger, I created this SIMBL plugin. It monkey-patches portions of the Cocoa API that deal with adding notification badges and bouncing the dock icon so that Spotify's calls to these methods result in nothing happening.

In time, hopefully we won't need to use this anymore.

## Installation

1. Install [EasySIMBL](https://github.com/norio-nomura/EasySIMBL)
2. Download the bundle from Github's releases page. Extract the bundle included in the zip file.
3. Run EasySIMBL
4. Drag the bundle into the plugin list
5. Relaunch Spotify

## Status
Working on 10.9.5 + latest Spotify
