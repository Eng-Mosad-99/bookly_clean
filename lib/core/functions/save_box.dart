 import 'package:hive/hive.dart';

import '../../Features/home/domain/entities/book_entity.dart';

void saveBoxData(List<BookEntity> books, String boxName) {
    /// علشان اخزنها لوكال بقي
    var box = Hive.box(boxName);
    box.addAll(books);
  }
