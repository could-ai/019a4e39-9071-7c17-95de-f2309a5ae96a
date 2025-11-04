import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Go Live'),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {
              // Start live stream
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          // Placeholder for video stream
          Container(
            color: Colors.black87,
            child: const Center(
              child: Icon(
                Icons.videocam,
                color: Colors.white54,
                size: 100,
              ),
            ),
          ),
          // Overlay UI
          _buildLiveOverlay(),
        ],
      ),
    );
  }

  Widget _buildLiveOverlay() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              const CircleAvatar(
                child: Icon(Icons.person),
              ),
              const SizedBox(width: 8),
              const Text(
                'Username',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              _buildActionButton(Icons.favorite, 'Like'),
              const SizedBox(width: 16),
              _buildActionButton(Icons.comment, 'Comment'),
              const SizedBox(width: 16),
              _buildActionButton(Icons.share, 'Share'),
            ],
          ),
          const SizedBox(height: 16),
          _buildMessageComposer(),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.white, size: 30),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }

  Widget _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 50.0,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: <Widget>[
          const Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration.collapsed(
                hintText: 'Add a comment...',
                hintStyle: TextStyle(color: Colors.white70),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            iconSize: 25.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
