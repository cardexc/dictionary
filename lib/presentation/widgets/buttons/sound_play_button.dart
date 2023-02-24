import 'dart:async';

import 'package:audio_session/audio_session.dart';
import 'package:dictionary/domain/speech/voice_model.dart';
import 'package:dictionary/domain/words/word_model.dart';
import 'package:dictionary/infrastructure/config/const.dart';
import 'package:dictionary/injection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:lottie/lottie.dart';

import '../../../domain/lesson/language_direction.dart';
import '../../../domain/speech/i_speech_repository.dart';

class SoundPlayButton extends StatefulWidget {
  final WordModel wordModel;
  final LanguageDirection languageDirection;
  final bool highlightBack;
  final bool playOnBuild;
  static double width = 60.0;

  const SoundPlayButton({
    required this.wordModel,
    required this.languageDirection,
    this.highlightBack = false,
    this.playOnBuild = false,
    Key? key,
  }) : super(key: key);

  @override
  State<SoundPlayButton> createState() => _SoundPlayButtonState();
}

class _SoundPlayButtonState extends State<SoundPlayButton> with WidgetsBindingObserver, TickerProviderStateMixin {
  final ISpeechRepository _speechRepository = getIt<ISpeechRepository>();

  late List<VoiceModel> _voices;

  VoiceModel? _selectedVoice;

  final _player = AudioPlayer();

  late final AnimationController _controller;

  Timer? playOnBuildTimer;

  Future<void> _init() async {
    // Inform the operating system of our app's audio attributes etc.
    // We pick a reasonable default for an app that plays speech.
    final session = await AudioSession.instance;

    await session.configure(const AudioSessionConfiguration.speech());
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _player.stop();
    }
  }

  @override
  void initState() {
    _init();

    _voices = _speechRepository.getVoices();

    _selectedVoice = _voices.isNotEmpty ? _voices[defaultVoiceIndex] : null;

    _controller = AnimationController(vsync: this);

    if (widget.playOnBuild) {
      synthesizeText();
    }

    super.initState();
  }

  @override
  void dispose() {
    _player.dispose();
    _controller.dispose();
    super.dispose();
  }

  void synthesizeText() async {
    var text = widget.wordModel.pl;
    if (_selectedVoice == null) {
      return;
    }

    var speechResponse = await _speechRepository.getSpeechFilePath(text, _selectedVoice!.name, _selectedVoice!.languageCodes.first);
    speechResponse.fold((failure) {}, (filePath) {
      try {
        _player.setAudioSource(AudioSource.file(filePath));

        if (_controller.value == 1.0) {
          _controller.reverse();
        } else {
          _controller.forward();
        }

        _player.play();
      } catch (e) {
        if (kDebugMode) {
          print(e);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = SoundPlayButton.width * 0.75;

    return GestureDetector(
      onTap: () {
        setState(() {
          synthesizeText();
        });
      },
      child: Container(
        color: widget.highlightBack ? Colors.orange : Colors.transparent,
        child: Center(
          child: Lottie.asset(
            'assets/lottie/sound_animation.json',
            controller: _controller,
            onLoaded: (composition) {
              _controller.duration = composition.duration;
            },
            repeat: true,
            width: SoundPlayButton.width,
            height: height,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
