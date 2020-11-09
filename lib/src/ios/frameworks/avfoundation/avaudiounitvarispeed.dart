// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiounittimeeffect.dart';

@NativeAvailable(macos: '10.10', ios: '8.0', tvos: '9.0')
@NativeUnavailable(watchos)
@native
class AVAudioUnitVarispeed extends AVAudioUnitTimeEffect {
  AVAudioUnitVarispeed([Class isa])
      : super(isa ?? Class('AVAudioUnitVarispeed'));
  AVAudioUnitVarispeed.fromPointer(Pointer<Void> ptr) : super.fromPointer(ptr);

  double get rate {
    return perform(SEL('rate'));
  }

  set rate(double rate) => perform(SEL('setRate:'), args: [rate]);
}
