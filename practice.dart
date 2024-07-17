import 'dart:async';
import 'dart:io';

Future<void> createDescriptions(Iterable<String> fileNames) async {
  for (final fileName in fileNames) {
    try {
      var file = File('$fileName.txt');
      if (await file.exists()) {
        var modified = await file.lastModified();
        print(
            'File for $fileName already exists. It was last modified on $modified');
        continue;
      }

      await file.create();
      await file.writeAsString('Start describing $fileName in this file.');
      print('File $fileName created');
    } on IOException catch (e) {
      print('IOException: $e');
    }
  }
}

void main() {
  createDescriptions(['name', 'date']);
}
