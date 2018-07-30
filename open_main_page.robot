*** Settings ***
Documentation   Test to check that main page is loaded
Suite Teardown  Close Browser
Resource        resource.robot


*** Test Cases ***
Open main page and assert that page is loaded
    Open Atom Cream main page
    Assert that page is loaded  complete

