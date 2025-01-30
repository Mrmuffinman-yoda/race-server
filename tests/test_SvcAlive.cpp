#include <gtest/gtest.h>
#include "controllers/SvcAlive.hpp"

// TODO: Example test for future changes

TEST(SvcAliveTest, IsAlive) {
    SvcAlive svcAlive;
    EXPECT_TRUE(svcAlive.isAlive());
}