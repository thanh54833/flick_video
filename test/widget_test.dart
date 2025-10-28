import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:better_player_plus/better_player_plus.dart';

import 'package:flick_video/main.dart';

void main() {
  testWidgets('VideoController initialization test', (WidgetTester tester) async {
    // Initialize GetX
    Get.testMode = true;
    
    // Create VideoController
    final controller = VideoController();
    
    // Initialize the controller
    controller.onInit();
    
    // Wait for initialization
    await tester.pump(const Duration(milliseconds: 100));
    
    // Verify initial state
    expect(controller.videos.length, greaterThan(0));
    expect(controller.currentIndex.value, 0);
    expect(controller.currentVideoState.value, VideoState.loading);
    
    // Clean up
    controller.dispose();
  });

  testWidgets('VideoData model test', (WidgetTester tester) async {
    // Test VideoData creation
    final videoData = VideoData.fromUrl('https://example.com/video.mp4', 0);
    
    expect(videoData.id, 'video_0');
    expect(videoData.url, 'https://example.com/video.mp4');
    expect(videoData.thumbnail, null);
    expect(videoData.title, null);
    expect(videoData.duration, null);
  });

  testWidgets('VideoController video management test', (WidgetTester tester) async {
    // Initialize GetX
    Get.testMode = true;
    
    // Create VideoController
    final controller = VideoController();
    controller.onInit();
    
    // Test video registration
    final mockController = BetterPlayerController(
      const BetterPlayerConfiguration(
        aspectRatio: 9 / 16,
        fit: BoxFit.cover,
      ),
    );
    
    controller.registerVideoController(0, mockController);
    
    // Test video unregistration
    controller.unregisterVideoController(0);
    
    // Clean up
    mockController.dispose();
    controller.dispose();
  });
}