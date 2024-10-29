#pragma once
#include <string>

class Animal {
public:
    Animal(const std::string &name);
    virtual ~Animal() = default;

    virtual void speak() const = 0;

protected:
    std::string name;
};
