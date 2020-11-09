// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avasset.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfoundation/avcompositiontrack.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmtime.dart';
// You can uncomment this line when this package is ready.
// import 'package:coremedia/cmtimerange.dart';

@NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
@native
class AVComposition extends AVAsset with NSMutableCopying {
  AVComposition([Class isa]) : super(isa ?? Class('AVComposition'));
  AVComposition.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  AVCompositionTrack get tracks {
    Pointer<Void> result = perform(SEL('tracks'), decodeRetVal: false);
    return AVCompositionTrack.fromPointer(result);
  }

  set tracks(AVCompositionTrack tracks) =>
      perform(SEL('setTracks:'), args: [tracks]);

  CGSize get naturalSize {
    Pointer<Void> result = perform(SEL('naturalSize'), decodeRetVal: false);
    return CGSize.fromPointer(result);
  }

  set naturalSize(CGSize naturalSize) =>
      perform(SEL('setNaturalSize:'), args: [naturalSize]);
  @NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0', watchos: '2.0')
  id get URLAssetInitializationOptions {
    Pointer<Void> result =
        perform(SEL('URLAssetInitializationOptions'), decodeRetVal: false);
    return id.fromPointer(result);
  }

  @NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0', watchos: '2.0')
  set URLAssetInitializationOptions(id URLAssetInitializationOptions) =>
      perform(SEL('setURLAssetInitializationOptions:'),
          args: [URLAssetInitializationOptions]);
}

extension AVCompositionAVCompositionTrackInspection on AVComposition {
  AVCompositionTrack trackWithTrackID(CMPersistentTrackID trackID) {
    Pointer<Void> result =
        perform(SEL('trackWithTrackID:'), args: [trackID], decodeRetVal: false);
    return AVCompositionTrack.fromPointer(result);
  }

  AVCompositionTrack tracksWithMediaType(AVMediaType mediaType) {
    Pointer<Void> result = perform(SEL('tracksWithMediaType:'),
        args: [mediaType], decodeRetVal: false);
    return AVCompositionTrack.fromPointer(result);
  }

  AVCompositionTrack tracksWithMediaCharacteristic(
      AVMediaCharacteristic mediaCharacteristic) {
    Pointer<Void> result = perform(SEL('tracksWithMediaCharacteristic:'),
        args: [mediaCharacteristic], decodeRetVal: false);
    return AVCompositionTrack.fromPointer(result);
  }
}

@NativeAvailable(macos: '10.7', ios: '4.0', tvos: '9.0', watchos: '1.0')
@native
class AVMutableComposition extends AVComposition {
  AVMutableComposition([Class isa])
      : super(isa ?? Class('AVMutableComposition'));
  AVMutableComposition.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  AVMutableCompositionTrack get tracks {
    Pointer<Void> result = perform(SEL('tracks'), decodeRetVal: false);
    return AVMutableCompositionTrack.fromPointer(result);
  }

  set tracks(AVMutableCompositionTrack tracks) =>
      perform(SEL('setTracks:'), args: [tracks]);

  CGSize get naturalSize {
    Pointer<Void> result = perform(SEL('naturalSize'), decodeRetVal: false);
    return CGSize.fromPointer(result);
  }

  set naturalSize(CGSize naturalSize) =>
      perform(SEL('setNaturalSize:'), args: [naturalSize]);

  static AVMutableComposition composition() {
    Pointer<Void> result = Class('AVMutableComposition')
        .perform(SEL('composition'), decodeRetVal: false);
    return AVMutableComposition.fromPointer(result);
  }

  @NativeAvailable(macos: '10.11', ios: '9.0', tvos: '9.0', watchos: '2.0')
  static AVMutableComposition compositionWithURLAssetInitializationOptions(
      {NSObject URLAssetInitializationOptions}) {
    Pointer<Void> result = Class('AVMutableComposition').perform(
        SEL('compositionWithURLAssetInitializationOptions:'),
        args: [URLAssetInitializationOptions],
        decodeRetVal: false);
    return AVMutableComposition.fromPointer(result);
  }
}

extension AVMutableCompositionAVMutableCompositionCompositionLevelEditing
    on AVMutableComposition {
  bool insertTimeRangeOfAssetAtTimeError(
      CMTimeRange timeRange, AVAsset asset, CMTime startTime,
      {NSObjectRef<NSError> outError}) {
    return perform(SEL('insertTimeRange:ofAsset:atTime:error:'),
        args: [timeRange, asset, startTime, outError]);
  }

  void insertEmptyTimeRange(CMTimeRange timeRange) {
    perform(SEL('insertEmptyTimeRange:'), args: [timeRange]);
  }

  void removeTimeRange(CMTimeRange timeRange) {
    perform(SEL('removeTimeRange:'), args: [timeRange]);
  }

  void scaleTimeRangeToDuration(CMTimeRange timeRange, CMTime duration) {
    perform(SEL('scaleTimeRange:toDuration:'), args: [timeRange, duration]);
  }
}

extension AVMutableCompositionAVMutableCompositionTrackLevelEditing
    on AVMutableComposition {
  AVMutableCompositionTrack addMutableTrackWithMediaTypePreferredTrackID(
      AVMediaType mediaType, CMPersistentTrackID preferredTrackID) {
    Pointer<Void> result = perform(
        SEL('addMutableTrackWithMediaType:preferredTrackID:'),
        args: [mediaType, preferredTrackID],
        decodeRetVal: false);
    return AVMutableCompositionTrack.fromPointer(result);
  }

  void removeTrack(AVCompositionTrack track) {
    perform(SEL('removeTrack:'), args: [track]);
  }

  AVMutableCompositionTrack mutableTrackCompatibleWithTrack(
      AVAssetTrack track) {
    Pointer<Void> result = perform(SEL('mutableTrackCompatibleWithTrack:'),
        args: [track], decodeRetVal: false);
    return AVMutableCompositionTrack.fromPointer(result);
  }
}

extension AVMutableCompositionAVMutableCompositionTrackInspection
    on AVMutableComposition {
  AVMutableCompositionTrack trackWithTrackID(CMPersistentTrackID trackID) {
    Pointer<Void> result =
        perform(SEL('trackWithTrackID:'), args: [trackID], decodeRetVal: false);
    return AVMutableCompositionTrack.fromPointer(result);
  }

  AVMutableCompositionTrack tracksWithMediaType(AVMediaType mediaType) {
    Pointer<Void> result = perform(SEL('tracksWithMediaType:'),
        args: [mediaType], decodeRetVal: false);
    return AVMutableCompositionTrack.fromPointer(result);
  }

  AVMutableCompositionTrack tracksWithMediaCharacteristic(
      AVMediaCharacteristic mediaCharacteristic) {
    Pointer<Void> result = perform(SEL('tracksWithMediaCharacteristic:'),
        args: [mediaCharacteristic], decodeRetVal: false);
    return AVMutableCompositionTrack.fromPointer(result);
  }
}
// You can uncomment this line when this package is ready.
// import 'package:avfcore/avcomposition.dart';
