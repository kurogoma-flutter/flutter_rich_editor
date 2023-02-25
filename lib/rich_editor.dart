import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;

class RichTextEditor extends StatefulWidget {
  const RichTextEditor({super.key});

  @override
  _RichTextEditorState createState() => _RichTextEditorState();
}

class _RichTextEditorState extends State<RichTextEditor> {
  final quill.QuillController _controller = quill.QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          children: [
            quill.QuillToolbar.basic(controller: _controller),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Divider(
                height: 1,
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: quill.QuillEditor(
                controller: _controller,
                scrollController: ScrollController(),
                scrollable: true,
                focusNode: FocusNode(),
                autoFocus: true,
                readOnly: false,
                expands: false,
                padding: const EdgeInsets.all(8),
                enableInteractiveSelection: true,
                showCursor: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
