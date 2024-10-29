#pragma once
#include <vector>
#include <memory>
#include "Animal.hpp"

class Zoo {
public:
    void addAnimal(std::unique_ptr<Animal> animal);
    void makeAllSpeak() const;

private:
    std::vector<std::unique_ptr<Animal>> animals;
};
