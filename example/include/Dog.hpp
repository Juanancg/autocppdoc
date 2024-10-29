#pragma once
#include "Animal.hpp"

class Dog : public Animal {
public:
    Dog(const std::string &name);
    void speak() const override;
};
