// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudioformat.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiosettings.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiosession.dart';

@NativeAvailable(macos: '10.7', ios: '2.2', watchos: '3.0', tvos: '9.0')
@native
class AVAudioPlayer extends NSObject {
  AVAudioPlayer([Class isa]) : super(isa ?? Class('AVAudioPlayer'));
  AVAudioPlayer.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  bool get playing {
    return perform(SEL('playing'));
  }

  set playing(bool playing) => perform(SEL('setPlaying:'), args: [playing]);

  NSUInteger get numberOfChannels {
    return perform(SEL('numberOfChannels'));
  }

  set numberOfChannels(NSUInteger numberOfChannels) =>
      perform(SEL('setNumberOfChannels:'), args: [numberOfChannels]);

  NSTimeInterval get duration {
    Pointer<Void> result = perform(SEL('duration'), decodeRetVal: false);
    return NSTimeInterval.fromPointer(result);
  }

  set duration(NSTimeInterval duration) =>
      perform(SEL('setDuration:'), args: [duration]);
  @NativeAvailable(macos: '10.13')
  @NativeUnavailable(ios, watchos, tvos)
  String get currentDevice {
    Pointer<Void> result = perform(SEL('currentDevice'), decodeRetVal: false);
    return NSString.fromPointer(result).raw;
  }

  @NativeAvailable(macos: '10.13')
  @NativeUnavailable(ios, watchos, tvos)
  set currentDevice(String currentDevice) =>
      perform(SEL('setCurrentDevice:'), args: [currentDevice]);

  AVAudioPlayerDelegate get delegate {
    Pointer<Void> result = perform(SEL('delegate'), decodeRetVal: false);
    return AVAudioPlayerDelegate.fromPointer(result);
  }

  set delegate(AVAudioPlayerDelegate delegate) =>
      perform(SEL('setDelegate:'), args: [delegate]);

  NSURL get url {
    Pointer<Void> result = perform(SEL('url'), decodeRetVal: false);
    return NSURL.fromPointer(result);
  }

  set url(NSURL url) => perform(SEL('setUrl:'), args: [url]);

  NSData get data {
    Pointer<Void> result = perform(SEL('data'), decodeRetVal: false);
    return NSData.fromPointer(result);
  }

  set data(NSData data) => perform(SEL('setData:'), args: [data]);
  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  double get pan {
    return perform(SEL('pan'));
  }

  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  set pan(double pan) => perform(SEL('setPan:'), args: [pan]);

  double get volume {
    return perform(SEL('volume'));
  }

  set volume(double volume) => perform(SEL('setVolume:'), args: [volume]);
  @NativeAvailable(macos: '10.8', ios: '5.0', watchos: '2.0', tvos: '9.0')
  bool get enableRate {
    return perform(SEL('enableRate'));
  }

  @NativeAvailable(macos: '10.8', ios: '5.0', watchos: '2.0', tvos: '9.0')
  set enableRate(bool enableRate) =>
      perform(SEL('setEnableRate:'), args: [enableRate]);
  @NativeAvailable(macos: '10.8', ios: '5.0', watchos: '2.0', tvos: '9.0')
  double get rate {
    return perform(SEL('rate'));
  }

  @NativeAvailable(macos: '10.8', ios: '5.0', watchos: '2.0', tvos: '9.0')
  set rate(double rate) => perform(SEL('setRate:'), args: [rate]);

  NSTimeInterval get currentTime {
    Pointer<Void> result = perform(SEL('currentTime'), decodeRetVal: false);
    return NSTimeInterval.fromPointer(result);
  }

  set currentTime(NSTimeInterval currentTime) =>
      perform(SEL('setCurrentTime:'), args: [currentTime]);
  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  NSTimeInterval get deviceCurrentTime {
    Pointer<Void> result =
        perform(SEL('deviceCurrentTime'), decodeRetVal: false);
    return NSTimeInterval.fromPointer(result);
  }

  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  set deviceCurrentTime(NSTimeInterval deviceCurrentTime) =>
      perform(SEL('setDeviceCurrentTime:'), args: [deviceCurrentTime]);

  NSInteger get numberOfLoops {
    return perform(SEL('numberOfLoops'));
  }

  set numberOfLoops(NSInteger numberOfLoops) =>
      perform(SEL('setNumberOfLoops:'), args: [numberOfLoops]);
  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  id get settings {
    Pointer<Void> result = perform(SEL('settings'), decodeRetVal: false);
    return id.fromPointer(result);
  }

  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  set settings(id settings) => perform(SEL('setSettings:'), args: [settings]);
  @NativeAvailable(macos: '10.12', ios: '10.0', watchos: '3.0', tvos: '10.0')
  AVAudioFormat get format {
    Pointer<Void> result = perform(SEL('format'), decodeRetVal: false);
    return AVAudioFormat.fromPointer(result);
  }

  @NativeAvailable(macos: '10.12', ios: '10.0', watchos: '3.0', tvos: '10.0')
  set format(AVAudioFormat format) =>
      perform(SEL('setFormat:'), args: [format]);

  bool get meteringEnabled {
    return perform(SEL('meteringEnabled'));
  }

  set meteringEnabled(bool meteringEnabled) =>
      perform(SEL('setMeteringEnabled:'), args: [meteringEnabled]);
  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  AVAudioSessionChannelDescription get channelAssignments {
    Pointer<Void> result =
        perform(SEL('channelAssignments'), decodeRetVal: false);
    return AVAudioSessionChannelDescription.fromPointer(result);
  }

  @NativeAvailable(ios: '7.0', watchos: '2.0', tvos: '9.0')
  @NativeUnavailable(macos)
  set channelAssignments(AVAudioSessionChannelDescription channelAssignments) =>
      perform(SEL('setChannelAssignments:'), args: [channelAssignments]);
  AVAudioPlayer.initWithContentsOfURLError(
      NSURL url, NSObjectRef<NSError> outError)
      : super.fromPointer(_initWithContentsOfURLError(url, outError));

  static Pointer<Void> _initWithContentsOfURLError(
      NSURL url, NSObjectRef<NSError> outError) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithContentsOfURL:error:');
    return msgSend(target, sel, args: [url, outError], decodeRetVal: false);
  }

  AVAudioPlayer.initWithDataError(NSData data, NSObjectRef<NSError> outError)
      : super.fromPointer(_initWithDataError(data, outError));

  static Pointer<Void> _initWithDataError(
      NSData data, NSObjectRef<NSError> outError) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithData:error:');
    return msgSend(target, sel, args: [data, outError], decodeRetVal: false);
  }

  AVAudioPlayer.initWithContentsOfURLFileTypeHintError(
      NSURL url, NSObjectRef<NSError> outError, {String utiString})
      : super.fromPointer(
            _initWithContentsOfURLFileTypeHintError(url, utiString, outError));

  static Pointer<Void> _initWithContentsOfURLFileTypeHintError(
      NSURL url, NSObjectRef<NSError> outError,
      {String utiString}) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithContentsOfURL:fileTypeHint:error:');
    return msgSend(target, sel,
        args: [url, utiString, outError], decodeRetVal: false);
  }

  AVAudioPlayer.initWithDataFileTypeHintError(
      NSData data, NSObjectRef<NSError> outError, {String utiString})
      : super.fromPointer(
            _initWithDataFileTypeHintError(data, utiString, outError));

  static Pointer<Void> _initWithDataFileTypeHintError(
      NSData data, NSObjectRef<NSError> outError,
      {String utiString}) {
    Pointer<Void> target = alloc(Class('AVAudioPlayer'));
    SEL sel = SEL('initWithData:fileTypeHint:error:');
    return msgSend(target, sel,
        args: [data, utiString, outError], decodeRetVal: false);
  }

  bool prepareToPlay() {
    return perform(SEL('prepareToPlay'));
  }

  bool play() {
    return perform(SEL('play'));
  }

  @NativeAvailable(macos: '10.7', ios: '4.0', watchos: '2.0', tvos: '9.0')
  bool playAtTime(NSTimeInterval time) {
    return perform(SEL('playAtTime:'), args: [time]);
  }

  void pause() {
    perform(SEL('pause'));
  }

  void stop() {
    perform(SEL('stop'));
  }

  @NativeAvailable(macos: '10.12', ios: '10.0', watchos: '3.0', tvos: '10.0')
  void setVolumeFadeDuration(double volume, NSTimeInterval duration) {
    perform(SEL('setVolume:fadeDuration:'), args: [volume, duration]);
  }

  void updateMeters() {
    perform(SEL('updateMeters'));
  }

  double peakPowerForChannel(NSUInteger channelNumber) {
    return perform(SEL('peakPowerForChannel:'), args: [channelNumber]);
  }

  double averagePowerForChannel(NSUInteger channelNumber) {
    return perform(SEL('averagePowerForChannel:'), args: [channelNumber]);
  }
}

abstract class AVAudioPlayerDelegate {
  registerAVAudioPlayerDelegate() {
    registerProtocolCallback(this, audioPlayerDidFinishPlayingSuccessfully,
        'audioPlayerDidFinishPlaying:successfully:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerDecodeErrorDidOccurError,
        'audioPlayerDecodeErrorDidOccur:error:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerBeginInterruption,
        'audioPlayerBeginInterruption:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerEndInterruptionWithOptions,
        'audioPlayerEndInterruption:withOptions:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerEndInterruptionWithFlags,
        'audioPlayerEndInterruption:withFlags:', AVAudioPlayerDelegate);
    registerProtocolCallback(this, audioPlayerEndInterruption,
        'audioPlayerEndInterruption:', AVAudioPlayerDelegate);
  }

  void audioPlayerDidFinishPlayingSuccessfully(AVAudioPlayer player, bool flag);
  void audioPlayerDecodeErrorDidOccurError(AVAudioPlayer player,
      {NSError error});
  void audioPlayerBeginInterruption(AVAudioPlayer player);
  void audioPlayerEndInterruptionWithOptions(
      AVAudioPlayer player, NSUInteger flags);
  void audioPlayerEndInterruptionWithFlags(
      AVAudioPlayer player, NSUInteger flags);
  void audioPlayerEndInterruption(AVAudioPlayer player);
}
