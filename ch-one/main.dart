void main() { // this can also be main(List<String> args)
    String? name = 'my name';
    print(name);

    isPositive(0);

    paramFunction();
    // paramFunction(true, 0); // not supported
    paramFunction(b: true);
}

bool isPositive(int x) {
    return x > 0;
}

bool isNegative(int x) =>  x < 0;

// to have default values should be enclosed in {  },
// and should have 'type? x' and not 'type x'
// as per dart when enclosed it should default to null or something of sorts
// Dart has runes similar to go, basically unicodes -> int

void paramFunction({bool? b, int? x, String s = 'some value'}) {

}

// Uninitialized variables that have a nullable type have an initial value of null.
// Even variables with numeric types are initially null, because numbers—like everything
// else in Dart—are objects.
