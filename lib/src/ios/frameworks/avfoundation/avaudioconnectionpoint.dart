// Generated by @dartnative/codegen:
// https://www.npmjs.com/package/@dartnative/codegen

import 'dart:ffi';

import 'package:dart_native/dart_native.dart';
import 'package:dart_native_gen/dart_native_gen.dart';
// You can uncomment this line when this package is ready.
// import 'package:avfaudio/avaudiotypes.dart';

@NativeAvailable(macos: '10.11', ios: '9.0', watchos: '2.0', tvos: '9.0')
@native
class AVAudioConnectionPoint extends NSObject {
  AVAudioConnectionPoint([Class isa])
      : super(isa ?? Class('AVAudioConnectionPoint'));
  AVAudioConnectionPoint.fromPointer(Pointer<Void> ptr)
      : super.fromPointer(ptr);

  AVAudioNode get node {
    Pointer<Void> result = perform(SEL('node'), decodeRetVal: false);
    return AVAudioNode.fromPointer(result);
  }

  set node(AVAudioNode node) => perform(SEL('setNode:'), args: [node]);

  AVAudioNodeBus get bus {
    Pointer<Void> result = perform(SEL('bus'), decodeRetVal: false);
    return AVAudioNodeBus.fromPointer(result);
  }

  set bus(AVAudioNodeBus bus) => perform(SEL('setBus:'), args: [bus]);
  AVAudioConnectionPoint.initWithNodeBus(AVAudioNode node, AVAudioNodeBus bus)
      : super.fromPointer(_initWithNodeBus(node, bus));

  static Pointer<Void> _initWithNodeBus(AVAudioNode node, AVAudioNodeBus bus) {
    Pointer<Void> target = alloc(Class('AVAudioConnectionPoint'));
    SEL sel = SEL('initWithNode:bus:');
    return msgSend(target, sel, args: [node, bus], decodeRetVal: false);
  }

  AVAudioConnectionPoint.init() : super.fromPointer(_init());

  static Pointer<Void> _init() {
    Pointer<Void> target = alloc(Class('AVAudioConnectionPoint'));
    SEL sel = SEL('init');
    return msgSend(target, sel, args: [], decodeRetVal: false);
  }
}
