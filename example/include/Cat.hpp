#pragma once
#include "Animal.hpp"

class Cat : public Animal {
public:
    Cat(const std::string &name);
    void speak() const override;
};
