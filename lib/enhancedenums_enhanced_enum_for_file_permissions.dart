/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/enhancedenums_enhanced_enum_for_file_permissions_base.dart';

/*
Question:

Create an enhanced enum FilePermission with values Read, Write, Execute.

Implement a description property that returns a descriptive text for each permission 
(e.g., Read returns "Read Permission").

Add a method canCombineWith(FilePermission other) that returns true 
if two different permissions can be combined (e.g., Read and Write) and false if they are the same.
 */

enum FilePermission {
  Read,
  Write,
  Execute;

  String get description => (this == Read)
      ? "Read Permission"
      : (this == Write)
          ? "Write Permission"
          : "Execute Permission";

  bool canCombineWith(FilePermission other) => (this == other) ? false : true;
}
