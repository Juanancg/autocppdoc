#include "Zoo.hpp"
#include <iostream>

void Zoo::addAnimal(std::unique_ptr<Animal> animal) {
    animals.push_back(std::move(animal));
}

void Zoo::makeAllSpeak() const {
    for (const auto &animal : animals) {
        animal->speak();
    }
}
