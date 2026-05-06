#include "unity.h"
#include <stdbool.h>
#include <stdlib.h>
#include "../../examples/autotest-validate/autotest-validate.h"
#include "../../assignment-autotest/test/assignment1/username-from-conf-file.h"

void test_validate_my_username()
{
    // En lugar de llamar a my_username(), pon tu usuario directamente
    const char *expected_username = "budatecnik"; 
    char *actual_username = malloc_username_from_conf_file();

    TEST_ASSERT_NOT_NULL_MESSAGE(actual_username, "Username from conf file is NULL");
    TEST_ASSERT_EQUAL_STRING_MESSAGE(expected_username, actual_username, "Usernames do not match");

    free(actual_username);
}
