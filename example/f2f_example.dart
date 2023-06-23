import 'package:f2f/f2f.dart';

void main() {
  var currentPath = Directory.current.path;
  var tmpPath = join(currentPath, 'lib', 'src', 'tmp', 'test1.json');

  var figmaFile = FigmaFile.fromFile(tmpPath);

  figmaFile.printFile();
}
