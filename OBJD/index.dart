import 'package:objd/core.dart';

main(List<String> args) {
  createProject(
    Project(
      name: "RedstoneAdditions",
       generate: Pack(name: "redstone_additions")
    ),
    args
  );
}