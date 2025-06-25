class Arg {
  final String short;
  final String long;
  final String description;

  // make every object immutable
  const Arg(this.short, this.long, this.description);

  void show() {
    final shortPadded = short.padRight(1);
    final longPadded = long.padRight(10);

    print("    -${shortPadded}  --${longPadded}  ${description}");
  }
}

abstract class Args {
  static final usageMsg = '''
Task CLI – manage your to-do list from the terminal

Usage:
  dart run main.dart [command] [options]

Commands:''';
  static final List<Arg> args = [
    const Arg('a', 'add', 'Add a new task'),
    const Arg('d', 'done', 'Mark a task as done'),
    const Arg('r', 'remove', 'Remove a task'),
    const Arg('l', 'list', 'List all tasks'),
    helpArg,
  ];

  static void printUsage() {
    print(usageMsg);

    for (Arg arg in args) {
      arg.show();
    }
  }

  static String validateFlag(String flagArg) {
    if (flagArg.length == 2) {
      flagArg = flagArg.replaceFirst('-', '');
    } else if (flagArg.length > 2) {
      flagArg = flagArg.replaceFirst('--', '');
    }

    return flagArg;
  }

  static ArgAction matchArg(String flagArg) {
    String flag = validateFlag(flagArg);
    ArgAction flagAction;

    switch (flag) {
      case 'a':
        flagAction = ArgAction.ADD;
        break;
      case 'add':
        flagAction = ArgAction.ADD;
        break;

      case 'd':
        flagAction = ArgAction.DONE;
        break;
      case 'done':
        flagAction = ArgAction.DONE;
        break;

      case 'r':
        flagAction = ArgAction.REMOVE;
      case 'remove':
        flagAction = ArgAction.REMOVE;

      case 'l':
        flagAction = ArgAction.LIST;
      case 'list':
        flagAction = ArgAction.LIST;

      default:
        flagAction = ArgAction.NONE;
    }

    return flagAction;
  }
}

enum ArgAction { ADD, DONE, REMOVE, LIST, NONE }

const Arg helpArg = Arg('h', 'help', 'Usage help');
