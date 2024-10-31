import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:calme_mobile/core/color_values.dart';
import 'package:calme_mobile/core/styles.dart';
import 'package:calme_mobile/data/models/meditation/meditation_model.dart';
import 'package:calme_mobile/util/logger.dart';
import 'package:calme_mobile/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:just_audio/just_audio.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sizer/sizer.dart';
import 'package:unicons/unicons.dart';

@RoutePage()
class SessionPage extends StatefulWidget {
  const SessionPage({
    required this.meditationModel,
    super.key,
  });

  final MeditationModel meditationModel;

  @override
  State<SessionPage> createState() => _SessionPageState();
}

class _SessionPageState extends State<SessionPage> {
  var _index = 0;
  var _isLoading = true;
  int? _nowPlayingIndex;
  final _players = <AudioPlayer>[];

  @override
  void initState() {
    _getPlayers();
    super.initState();
  }

  Future<void> _getPlayers() async {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      context.loaderOverlay.show();
    });
    final sessions = widget.meditationModel.sessions;
    var i = 0;
    for (final data in sessions) {
      final player = AudioPlayer();
      if (i == 0) {
        await player.setAudioSource(AudioSource.uri(Uri.parse(data.audioUrl)));
      }
      _players.add(player);
      i++;
    }
    if (mounted) {
      context.loaderOverlay.hide();
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('$_isLoading');
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'Sesi Meditasi',
      ),
      body: _isLoading
          ? const SizedBox.shrink()
          : Container(
              width: 100.w,
              height: 100.h,
              padding: const EdgeInsets.all(Styles.defaultPadding),
              child: Column(
                children: [
                  _buildTitle(),
                  const Spacer(),
                  _buildImage(),
                  const Spacer(),
                  _buildButton(),
                  const SizedBox(
                    height: Styles.defaultSpacing,
                  ),
                  _buildDuration(),
                  const SizedBox(
                    height: Styles.defaultSpacing,
                  ),
                  const Spacer(),
                  _buildBottomButton(),
                ],
              ),
            ),
    );
  }

  Widget _buildBottomButton() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: ColorValues.primary30,
            ),
            onPressed: () async {
              final isMute = _players[_index].volume == 0;
              if (isMute) {
                await _players[_index].setVolume(1);
              } else {
                await _players[_index].setVolume(0);
              }
              setState(() {});
            },
            child: Row(
              children: [
                Icon(
                  (_players[_index].volume) > 0
                      ? UniconsLine.volume
                      : UniconsLine.volume_mute,
                  color: ColorValues.white,
                ),
                const SizedBox(
                  width: Styles.defaultSpacing,
                ),
                Text(
                  (_players[_index].volume) > 0 ? 'Audio On' : 'Audio Off',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium
                      ?.copyWith(color: ColorValues.white, fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDuration() {
    return StreamBuilder(
      stream: _players[_index].positionStream,
      builder: (context, snapshot) {
        final d = snapshot.data ?? Duration.zero;
        final sDuration = d.toString().split('.').first.padLeft(8, '0');
        return Text(
          sDuration,
          style: Theme.of(context).textTheme.titleMedium,
        );
      },
    );
  }

  Widget _buildButton() {
    return StreamBuilder<Object>(
      stream: _players[_index].playingStream,
      builder: (context, snapshot) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Opacity(
              opacity: _index == 0 ? 0 : 1,
              child: _buildCircleButton(
                icon: UniconsLine.arrow_left,
                iconColor: ColorValues.primary50,
                backgroundColor: ColorValues.primary10,
                onTap: () {
                  if (_index != 0) {
                    _changeIndex(true);
                  }
                },
                size: 40,
              ),
            ),
            const SizedBox(
              width: Styles.defaultSpacing,
            ),
            _buildCircleButton(
              icon: _players[_index].playing
                  ? UniconsLine.pause
                  : UniconsLine.play,
              iconColor: ColorValues.white,
              backgroundColor: ColorValues.primary50,
              onTap: () async {
                logger.d('clicked in index $_index $_nowPlayingIndex');
                if (_nowPlayingIndex != null && _nowPlayingIndex != _index) {
                  unawaited(_players[_nowPlayingIndex!].pause());
                  logger.d('pause test $_nowPlayingIndex');
                  unawaited(
                    _players[_index].setAudioSource(
                      AudioSource.uri(
                        Uri.parse(
                          widget.meditationModel.sessions[_index].audioUrl,
                        ),
                      ),
                    ),
                  );
                }
                if (_players[_index].playing) {
                  unawaited(_players[_index].pause());
                  _nowPlayingIndex = null;
                } else {
                  unawaited(_players[_index].play());
                  _nowPlayingIndex = _index;
                }
                logger.d('now playing index $_nowPlayingIndex');
                setState(() {});
              },
              size: 64,
            ),
            const SizedBox(
              width: Styles.defaultSpacing,
            ),
            Opacity(
              opacity:
                  _index == widget.meditationModel.sessions.length - 1 ? 0 : 1,
              child: _buildCircleButton(
                icon: UniconsLine.arrow_right,
                iconColor: ColorValues.primary50,
                backgroundColor: ColorValues.primary10,
                onTap: () {
                  if (_index != widget.meditationModel.sessions.length - 1) {
                    _changeIndex(false);
                  }
                },
                size: 40,
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _changeIndex(bool isPrevious) async {
    if (isPrevious) {
      setState(() {
        _index--;
      });
    } else {
      setState(() {
        _index++;
      });
    }
  }

  Widget _buildCircleButton({
    required IconData icon,
    required Color iconColor,
    required Color backgroundColor,
    required double size,
    VoidCallback? onTap,
  }) {
    return RawMaterialButton(
      onPressed: onTap,
      fillColor: backgroundColor,
      shape: const CircleBorder(),
      constraints: BoxConstraints(
        minWidth: size,
        minHeight: size,
      ),
      child: Icon(
        icon,
        color: iconColor,
      ),
    );
  }

  Widget _buildImage() {
    return CachedNetworkImage(
      imageUrl: widget.meditationModel.sessions[_index].thumbnailUrl,
      height: 25.h,
      width: 25.h,
    );
  }

  Widget _buildTitle() {
    return Column(
      children: [
        Text(
          widget.meditationModel.title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          '${_index + 1}/${widget.meditationModel.sessions.length}',
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: ColorValues.grey50),
        ),
      ],
    );
  }

  @override
  void dispose() {
    for (final data in _players) {
      data.dispose();
    }
    super.dispose();
  }
}
