class Animal {
    // int age; // if age is added in this and this is inherited/implemented, then getters/setters for age should also be implemented
    void speak() => print("animal speaking");
}

class Bird implements Animal {
    // void speak() => print("bird chirping");

    @override
    void speak() => print("bird chirping");
}

class Person {
    int age;

    Person(this.age);

    int get getAge => age;
}

/*

class Animal {
  int age = 0;                 // Public field
  void speak() => print("animal speaking");
}


class Bird implements Animal {
  @override
  void speak() => print("bird chirping");

  // This is now REQUIRED
  int age = 0;
}

// no problem in here
class Bird extends Animal {
  @override
  void speak() => print("bird chirping");
}

extends      only override as needed
implements   must reimplement all

// there are abstract classes too which are similar to java
*/
