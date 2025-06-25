import 'args.dart';

void main(List<String> args) {
  try {
    if (args.isEmpty) throw ArgumentError('No arguments provided');

    ArgAction action = Args.matchArg(args[0]);
    if (action == ArgAction.NONE)
      throw ArgumentError('Unknown Flag: ${args[0]}');
  } catch (e) {
    print('Error: $e\n');
    Args.printUsage();
  }
}
