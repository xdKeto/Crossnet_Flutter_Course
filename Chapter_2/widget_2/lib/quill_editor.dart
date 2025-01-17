// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';
import 'package:widget_2/notification.dart';

class HtmlQuillEditor extends StatefulWidget {
  const HtmlQuillEditor({super.key});

  @override
  State<HtmlQuillEditor> createState() => _HtmlQuillEditorState();
}

class _HtmlQuillEditorState extends State<HtmlQuillEditor> {
  QuillController Qcontroller = QuillController.basic();

  @override
  void initState() {
    super.initState();

    NotificationService.init();
  }

  String hasil = '';
  void saveHTML() {
    setState(() {
      // print(Qcontroller.document.toDelta().toJson());

      final converter = QuillDeltaToHtmlConverter(
          Qcontroller.document.toDelta().toJson(),
          ConverterOptions(
              sanitizerOptions:
                  OpAttributeSanitizerOptions(allow8DigitHexColors: true),
              converterOptions: OpConverterOptions(inlineStylesFlag: true)));

      hasil = converter.convert();
      // print(html);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(padding: EdgeInsets.only(bottom: 32)),
        Center(
          child: InkWell(
              onTap: () {
                saveHTML();
                NotificationService.showInstantNotification(
                    3, 'TESTING', 'TES TEST ES TES TESTES');
              },
              child: Text('HTML EDITOR',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))),
        ),
        QuillSimpleToolbar(
          controller: Qcontroller,
          configurations: const QuillSimpleToolbarConfigurations(),
        ),
        Expanded(
          child: QuillEditor.basic(
            controller: Qcontroller,
            configurations: const QuillEditorConfigurations(),
          ),
        ),
        Divider(
          thickness: 2,
        ),
        Text('Ini Hasil HTML:'),
        Padding(
          padding: EdgeInsets.only(bottom: 8),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: HtmlWidget(hasil),
        ),
      ],
    );
  }
}
