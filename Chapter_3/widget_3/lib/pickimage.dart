import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';

class Pickimage extends StatefulWidget {
  const Pickimage({super.key});

  @override
  State<Pickimage> createState() => _PickimageState();
}

class _PickimageState extends State<Pickimage> {
  bool uploadFile = false;
  ImagePicker picker = ImagePicker();
  File? pickedIMG;
  Uint8List pickedImageByte = Uint8List(0);

  Future<Uint8List> testCompressFile(File file) async {
    var result = await FlutterImageCompress.compressWithFile(
      file.absolute.path,
      quality: 94,
    );
    // print(file.lengthSync());
    // print(result!.length);
    return result!;
  }

  Future<Uint8List> testComporessList(Uint8List list) async {
    var result = await FlutterImageCompress.compressWithList(
      list,
      quality: 96,
    );
    // print(list.length);
    // print(result.length);
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () async {
                final XFile? photo =
                    await picker.pickImage(source: ImageSource.gallery);

                if (photo != null) {
                  // print('berhasil pick image');
                  pickedImageByte = await photo.readAsBytes();
                  setState(() {
                    pickedIMG = File(photo.path);
                    testCompressFile(pickedIMG!);
                    uploadFile = true;
                  });
                }
              },
              child: const Text("from Gallery"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () async {
                final XFile? photo =
                    await picker.pickImage(source: ImageSource.camera);

                if (photo != null) {
                  pickedImageByte = await photo.readAsBytes();
                  // print('berhasil pick image');
                  setState(() {
                    pickedIMG = File(photo.path);
                    testCompressFile(pickedIMG!);
                    uploadFile = true;
                  });
                }
              },
              child: const Text("from Camera"),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        uploadFile == true
            ? Image.file(pickedIMG!)
            : const Center(child: Text('gaada photo')),
        const Center(
          child: Text('Text pake bytes'),
        ),
        const SizedBox(
          height: 16,
        ),
        uploadFile == true
            ? Image.memory(pickedImageByte)
            : const Center(child: Text('gaada photo byte')),
      ],
    );
  }
}
