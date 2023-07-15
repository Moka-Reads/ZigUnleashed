#include <iostream>
using namespace std;

class Person{
    private: 
        string name;
        int age;
    public: 
        // declaring constructor 
        Person(){
            cout << "Person constructor called" << endl;
            name = "Name";
            age = 20;
        }
        // declaring destructor 
        ~Person(){
            cout << "Person destructor called" << endl;
        }
        // bounded method 
        void display(){
            cout << "Person name: " << name << endl;
            cout << "Person age: " << age << endl;
        }
};

int main()
{
    Person person = Person(); // create new Person using constructor
    person.display(); // display person
    return 0;
}// person destructor called
