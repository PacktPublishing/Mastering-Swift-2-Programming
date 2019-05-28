//
//  CppSwift.cpp
//  Swiftcpp
//
//  Created by Dan Beaulieu on 12/12/15.
//  Copyright © 2015 Dan Beaulieu. All rights reserved.
//



#include <functional>
#include <random>
#include <iostream>
#include <memory>
#include "CppSwift.h"

using namespace std;

class RandomGenerator
{
private:
    std::mt19937 re;
    std::normal_distribution<float> di;
public:
    RandomGenerator() : di(30,1)
    {
        re.seed((unsigned int)time(0));
    }
    
    float get()
    {
        return di(re);
    }
};

static std::unique_ptr<RandomGenerator> generator;

float getRandom()
{
    if(!generator)
    {
        generator = std::unique_ptr<RandomGenerator>(new RandomGenerator);
    }
    
    return generator->get();
}