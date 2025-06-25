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

Options:''';
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
}

const Arg helpArg = Arg('h', 'help', 'Usage help');
