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
      appBar: AppBar(
        title: const Text('Rich Text Editor'),
      ),
      body: quill.QuillEditor(
        controller: _controller,
        scrollController: ScrollController(),
        scrollable: true,
        focusNode: FocusNode(),
        autoFocus: true,
        readOnly: false,
        expands: false,
        padding: EdgeInsets.zero,
        enableInteractiveSelection: true,
        // You can customize the toolbar with the following optional props:
        // toolbar: QuillToolbar.basic(),
        // toolbar: QuillToolbar.none(),
        // toolbar: QuillToolbar.custom(...),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.save),
        onPressed: () {
          final contents = _controller.document.toPlainText();
          // Do something with the contents
        },
      ),
    );
  }
}
