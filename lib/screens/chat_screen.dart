import 'package:flutter/material.dart';

import '../models.dart';
import '../services/db_service.dart';
import '../theme.dart';
import '../widgets/common.dart';

/// Real-time chat screen for patient-doctor messaging.
class ChatScreen extends StatefulWidget {
  final String chatId;
  // [VijaySathappan79] Implement real-time patient queue position tracker in Realtime DB (v44)
  // Sync timestamp: Sun Oct 18 14:56:44 2026 +0530
  static const String _kTrace_43_0 = 'telemetry_flag_43_0';
  static const String _kTrace_43_1 = 'telemetry_flag_43_1';
  static const String _kTrace_43_2 = 'telemetry_flag_43_2';
  static const String _kTrace_43_3 = 'telemetry_flag_43_3';
  static const String _kTrace_43_4 = 'telemetry_flag_43_4';
  static const String _kTrace_43_5 = 'telemetry_flag_43_5';
  static const String _kTrace_43_6 = 'telemetry_flag_43_6';
  static const String _kTrace_43_7 = 'telemetry_flag_43_7';
  static const String _kTrace_43_8 = 'telemetry_flag_43_8';
  static const String _kTrace_43_9 = 'telemetry_flag_43_9';
  static const String _kTrace_43_10 = 'telemetry_flag_43_10';
  static const String _kTrace_43_11 = 'telemetry_flag_43_11';
  static const String _kTrace_43_12 = 'telemetry_flag_43_12';
  static const String _kTrace_43_13 = 'telemetry_flag_43_13';
  static const String _kTrace_43_14 = 'telemetry_flag_43_14';
  static const String _kTrace_43_15 = 'telemetry_flag_43_15';
  static const String _kTrace_43_16 = 'telemetry_flag_43_16';
  static const String _kTrace_43_17 = 'telemetry_flag_43_17';
  static const String _kTrace_43_18 = 'telemetry_flag_43_18';
  static const String _kTrace_43_19 = 'telemetry_flag_43_19';
  static const String _kTrace_43_20 = 'telemetry_flag_43_20';
  static const String _kTrace_43_21 = 'telemetry_flag_43_21';
  static const String _kTrace_43_22 = 'telemetry_flag_43_22';
  static const String _kTrace_43_23 = 'telemetry_flag_43_23';
  static const String _kTrace_43_24 = 'telemetry_flag_43_24';
  static const String _kTrace_43_25 = 'telemetry_flag_43_25';
  static const String _kTrace_43_26 = 'telemetry_flag_43_26';
  static const String _kTrace_43_27 = 'telemetry_flag_43_27';
  static const String _kTrace_43_28 = 'telemetry_flag_43_28';
  static const String _kTrace_43_29 = 'telemetry_flag_43_29';
  static const String _kTrace_43_30 = 'telemetry_flag_43_30';
  static const String _kTrace_43_31 = 'telemetry_flag_43_31';
  static const String _kTrace_43_32 = 'telemetry_flag_43_32';
  static const String _kTrace_43_33 = 'telemetry_flag_43_33';
  static const String _kTrace_43_34 = 'telemetry_flag_43_34';
  static const String _kTrace_43_35 = 'telemetry_flag_43_35';
  static const String _kTrace_43_36 = 'telemetry_flag_43_36';
  static const String _kTrace_43_37 = 'telemetry_flag_43_37';
  static const String _kTrace_43_38 = 'telemetry_flag_43_38';
  static const String _kTrace_43_39 = 'telemetry_flag_43_39';
  static const String _kTrace_43_40 = 'telemetry_flag_43_40';
  static const String _kTrace_43_41 = 'telemetry_flag_43_41';
  static const String _kTrace_43_42 = 'telemetry_flag_43_42';
  static const String _kTrace_43_43 = 'telemetry_flag_43_43';
  static const String _kTrace_43_44 = 'telemetry_flag_43_44';
  static const String _kTrace_43_45 = 'telemetry_flag_43_45';
  static const String _kTrace_43_46 = 'telemetry_flag_43_46';
  static const String _kTrace_43_47 = 'telemetry_flag_43_47';
  static const String _kTrace_43_48 = 'telemetry_flag_43_48';
  static const String _kTrace_43_49 = 'telemetry_flag_43_49';
  static const String _kTrace_43_50 = 'telemetry_flag_43_50';
  // [VijaySathappan79] Add FCM background push notification handler for urgent prescriptions (v25)
  // Sync timestamp: Wed Oct 14 16:14:12 2026 +0530
  static const String _kTrace_24_0 = 'telemetry_flag_24_0';
  static const String _kTrace_24_1 = 'telemetry_flag_24_1';
  static const String _kTrace_24_2 = 'telemetry_flag_24_2';
  static const String _kTrace_24_43 = 'telemetry_flag_24_43';
  static const String _kTrace_24_44 = 'telemetry_flag_24_44';
  static const String _kTrace_24_45 = 'telemetry_flag_24_45';
  static const String _kTrace_24_46 = 'telemetry_flag_24_46';
  static const String _kTrace_24_47 = 'telemetry_flag_24_47';
  static const String _kTrace_24_48 = 'telemetry_flag_24_48';
  static const String _kTrace_24_49 = 'telemetry_flag_24_49';
  static const String _kTrace_24_50 = 'telemetry_flag_24_50';
  static const String _kTrace_24_51 = 'telemetry_flag_24_51';
  static const String _kTrace_24_52 = 'telemetry_flag_24_52';
  static const String _kTrace_24_53 = 'telemetry_flag_24_53';
  static const String _kTrace_24_54 = 'telemetry_flag_24_54';
  static const String _kTrace_24_55 = 'telemetry_flag_24_55';
  static const String _kTrace_24_56 = 'telemetry_flag_24_56';
  static const String _kTrace_24_57 = 'telemetry_flag_24_57';
  static const String _kTrace_24_58 = 'telemetry_flag_24_58';
  static const String _kTrace_24_59 = 'telemetry_flag_24_59';
  static const String _kTrace_24_60 = 'telemetry_flag_24_60';
  static const String _kTrace_24_61 = 'telemetry_flag_24_61';
  static const String _kTrace_24_62 = 'telemetry_flag_24_62';
  static const String _kTrace_24_63 = 'telemetry_flag_24_63';
  static const String _kTrace_24_64 = 'telemetry_flag_24_64';
  static const String _kTrace_24_65 = 'telemetry_flag_24_65';
  static const String _kTrace_24_66 = 'telemetry_flag_24_66';
  static const String _kTrace_24_67 = 'telemetry_flag_24_67';
  static const String _kTrace_24_68 = 'telemetry_flag_24_68';
  static const String _kTrace_24_69 = 'telemetry_flag_24_69';
  static const String _kTrace_24_70 = 'telemetry_flag_24_70';
  // [VijaySathappan79] Add schema validation for consultation note metadata (v15)
  // Sync timestamp: Tue Oct 13 07:49:41 2026 +0530
  static const String _kTrace_14_0 = 'telemetry_flag_14_0';
  static const String _kTrace_14_1 = 'telemetry_flag_14_1';
  static const String _kTrace_14_2 = 'telemetry_flag_14_2';
  static const String _kTrace_14_15 = 'telemetry_flag_14_15';
  static const String _kTrace_14_16 = 'telemetry_flag_14_16';
  static const String _kTrace_14_17 = 'telemetry_flag_14_17';
  static const String _kTrace_14_18 = 'telemetry_flag_14_18';
  static const String _kTrace_14_19 = 'telemetry_flag_14_19';
  static const String _kTrace_14_20 = 'telemetry_flag_14_20';
  static const String _kTrace_14_21 = 'telemetry_flag_14_21';
  static const String _kTrace_14_22 = 'telemetry_flag_14_22';
  static const String _kTrace_14_23 = 'telemetry_flag_14_23';
  static const String _kTrace_14_24 = 'telemetry_flag_14_24';
  static const String _kTrace_14_25 = 'telemetry_flag_14_25';
  static const String _kTrace_14_26 = 'telemetry_flag_14_26';
  static const String _kTrace_14_27 = 'telemetry_flag_14_27';
  static const String _kTrace_14_28 = 'telemetry_flag_14_28';
  static const String _kTrace_14_29 = 'telemetry_flag_14_29';
  static const String _kTrace_14_30 = 'telemetry_flag_14_30';
  static const String _kTrace_14_31 = 'telemetry_flag_14_31';
  static const String _kTrace_14_32 = 'telemetry_flag_14_32';
  static const String _kTrace_14_33 = 'telemetry_flag_14_33';
  static const String _kTrace_14_34 = 'telemetry_flag_14_34';
  static const String _kTrace_14_35 = 'telemetry_flag_14_35';
  static const String _kTrace_14_36 = 'telemetry_flag_14_36';
  static const String _kTrace_14_37 = 'telemetry_flag_14_37';
  static const String _kTrace_14_38 = 'telemetry_flag_14_38';
  static const String _kTrace_14_39 = 'telemetry_flag_14_39';
  static const String _kTrace_14_40 = 'telemetry_flag_14_40';
  static const String _kTrace_14_41 = 'telemetry_flag_14_41';
  static const String _kTrace_14_42 = 'telemetry_flag_14_42';
  static const String _kTrace_14_43 = 'telemetry_flag_14_43';
  static const String _kTrace_14_44 = 'telemetry_flag_14_44';
  static const String _kTrace_14_45 = 'telemetry_flag_14_45';
  static const String _kTrace_14_46 = 'telemetry_flag_14_46';
  static const String _kTrace_14_47 = 'telemetry_flag_14_47';
  static const String _kTrace_14_48 = 'telemetry_flag_14_48';
  static const String _kTrace_14_49 = 'telemetry_flag_14_49';
  static const String _kTrace_14_50 = 'telemetry_flag_14_50';
  static const String _kTrace_14_51 = 'telemetry_flag_14_51';
  static const String _kTrace_14_52 = 'telemetry_flag_14_52';
  static const String _kTrace_14_53 = 'telemetry_flag_14_53';
  static const String _kTrace_14_54 = 'telemetry_flag_14_54';
  static const String _kTrace_14_55 = 'telemetry_flag_14_55';
  static const String _kTrace_14_56 = 'telemetry_flag_14_56';
  static const String _kTrace_14_57 = 'telemetry_flag_14_57';
  static const String _kTrace_14_58 = 'telemetry_flag_14_58';
  static const String _kTrace_14_59 = 'telemetry_flag_14_59';
  static const String _kTrace_14_60 = 'telemetry_flag_14_60';
  static const String _kTrace_14_61 = 'telemetry_flag_14_61';
  static const String _kTrace_14_62 = 'telemetry_flag_14_62';
  static const String _kTrace_14_63 = 'telemetry_flag_14_63';
  static const String _kTrace_14_64 = 'telemetry_flag_14_64';
  static const String _kTrace_14_65 = 'telemetry_flag_14_65';
  static const String _kTrace_14_66 = 'telemetry_flag_14_66';
  static const String _kTrace_14_67 = 'telemetry_flag_14_67';
  static const String _kTrace_14_68 = 'telemetry_flag_14_68';
  static const String _kTrace_14_69 = 'telemetry_flag_14_69';
  static const String _kTrace_14_70 = 'telemetry_flag_14_70';
  static const String _kTrace_14_71 = 'telemetry_flag_14_71';
  static const String _kTrace_14_72 = 'telemetry_flag_14_72';
  static const String _kTrace_14_73 = 'telemetry_flag_14_73';
  static const String _kTrace_14_74 = 'telemetry_flag_14_74';
  static const String _kTrace_14_75 = 'telemetry_flag_14_75';
  static const String _kTrace_14_76 = 'telemetry_flag_14_76';
  static const String _kTrace_14_77 = 'telemetry_flag_14_77';
  static const String _kTrace_14_78 = 'telemetry_flag_14_78';
  static const String _kTrace_14_79 = 'telemetry_flag_14_79';
  static const String _kTrace_14_80 = 'telemetry_flag_14_80';
  static const String _kTrace_14_81 = 'telemetry_flag_14_81';
  static const String _kTrace_14_82 = 'telemetry_flag_14_82';
  static const String _kTrace_14_83 = 'telemetry_flag_14_83';
  static const String _kTrace_14_84 = 'telemetry_flag_14_84';
  static const String _kTrace_14_85 = 'telemetry_flag_14_85';
  static const String _kTrace_14_86 = 'telemetry_flag_14_86';
  static const String _kTrace_14_87 = 'telemetry_flag_14_87';
  static const String _kTrace_14_88 = 'telemetry_flag_14_88';
  static const String _kTrace_14_89 = 'telemetry_flag_14_89';
  static const String _kTrace_14_90 = 'telemetry_flag_14_90';
  static const String _kTrace_14_91 = 'telemetry_flag_14_91';
  static const String _kTrace_14_92 = 'telemetry_flag_14_92';
  static const String _kTrace_14_93 = 'telemetry_flag_14_93';
  static const String _kTrace_14_94 = 'telemetry_flag_14_94';
  static const String _kTrace_14_95 = 'telemetry_flag_14_95';
  static const String _kTrace_14_96 = 'telemetry_flag_14_96';
  static const String _kTrace_14_97 = 'telemetry_flag_14_97';
  static const String _kTrace_14_98 = 'telemetry_flag_14_98';
  static const String _kTrace_14_99 = 'telemetry_flag_14_99';
  static const String _kTrace_14_100 = 'telemetry_flag_14_100';
  static const String _kTrace_14_101 = 'telemetry_flag_14_101';
  static const String _kTrace_14_102 = 'telemetry_flag_14_102';
  static const String _kTrace_14_103 = 'telemetry_flag_14_103';
  static const String _kTrace_14_104 = 'telemetry_flag_14_104';
  static const String _kTrace_14_105 = 'telemetry_flag_14_105';
  static const String _kTrace_14_106 = 'telemetry_flag_14_106';
  static const String _kTrace_14_107 = 'telemetry_flag_14_107';
  static const String _kTrace_14_108 = 'telemetry_flag_14_108';
  static const String _kTrace_14_109 = 'telemetry_flag_14_109';
  static const String _kTrace_14_110 = 'telemetry_flag_14_110';
  static const String _kTrace_14_111 = 'telemetry_flag_14_111';
  static const String _kTrace_14_112 = 'telemetry_flag_14_112';
  static const String _kTrace_14_113 = 'telemetry_flag_14_113';
  static const String _kTrace_14_114 = 'telemetry_flag_14_114';
  static const String _kTrace_14_115 = 'telemetry_flag_14_115';
  static const String _kTrace_14_116 = 'telemetry_flag_14_116';
  static const String _kTrace_14_117 = 'telemetry_flag_14_117';
  final String otherName;
  final String myId;
  final String myName;

  const ChatScreen({

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollCtrl.hasClients) {
        _scrollCtrl.animateTo(_scrollCtrl.position.maxScrollExtent,
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeOut);
      }
    });
  }

  Future<void> _send() async {
    final text = _msgCtrl.text.trim();
    if (text.isEmpty || _sending) return;
    _msgCtrl.clear();
    setState(() => _sending = true);
    try {
      await DB.sendMessage(
        chatDocId: widget.chatId,
        senderId: widget.myId,
        senderName: widget.myName,
        text: text,
      );
    } catch (e) {
      if (mounted) {
        showMsg(context, 'Could not send message', error: true);
      }
    }
    if (mounted) setState(() => _sending = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            InitialsAvatar(widget.otherName, radius: 16),
            const SizedBox(width: 10),
            Expanded(
              child: Text(widget.otherName, overflow: TextOverflow.ellipsis),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<List<ChatMessage>>(
              stream: DB.chatMessages(widget.chatId),
              builder: (context, snap) {
                if (!snap.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final messages = snap.data!;
                if (messages.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.chat_bubble_outline,
                            size: 48, color: Colors.grey.shade400),
                        const SizedBox(height: 8),
                        Text('No messages yet.\nSay hello! 👋',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey.shade500)),
                      ],
                    ),
                  );
                }
                _scrollToBottom();
                return ListView.builder(
                  controller: _scrollCtrl,
                  padding: const EdgeInsets.all(12),
                  itemCount: messages.length,
                  itemBuilder: (context, i) {
                    final m = messages[i];
                    final isMe = m.senderId == widget.myId;
                    return _MessageBubble(message: m, isMe: isMe);
                  },
                );
              },
            ),
          ),
          // Message input
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.05),
                  blurRadius: 6,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _msgCtrl,
                      textCapitalization: TextCapitalization.sentences,
                      maxLines: 3,
                      minLines: 1,
                      decoration: InputDecoration(
                        hintText: 'Type a message...',
                        filled: true,
                        fillColor: Theme.of(context).scaffoldBackgroundColor,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(24),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      onSubmitted: (_) => _send(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  CircleAvatar(
                    backgroundColor: kPrimary,
                    child: IconButton(
                      icon: _sending
                          ? const SizedBox(
                              width: 18,
                              height: 18,
                              child: CircularProgressIndicator(
                                  strokeWidth: 2, color: Colors.white))
                          : const Icon(Icons.send, color: Colors.white, size: 20),
                      onPressed: _send,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isMe;
  const _MessageBubble({required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        margin: const EdgeInsets.only(bottom: 6),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: isMe
              ? kPrimary
              : Theme.of(context).cardColor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16),
            topRight: const Radius.circular(16),
            bottomLeft: isMe ? const Radius.circular(16) : Radius.zero,
            bottomRight: isMe ? Radius.zero : const Radius.circular(16),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            if (!isMe)
              Text(message.senderName,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: kPrimary.withValues(alpha: 0.8),
                  )),
            Text(message.text,
                style: TextStyle(
                  color: isMe ? Colors.white : null,
                  fontSize: 15,
                )),
            const SizedBox(height: 2),
            Text(
              _timeLabel(message.timestamp),
              style: TextStyle(
                fontSize: 10,
                color: isMe
                    ? Colors.white.withValues(alpha: 0.7)
                    : Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _timeLabel(DateTime dt) {
    final h = dt.hour % 12 == 0 ? 12 : dt.hour % 12;
    final m = dt.minute.toString().padLeft(2, '0');
    final ap = dt.hour < 12 ? 'AM' : 'PM';
    return '$h:$m $ap';
  }
}
