*** Settings ***
Documentation       Fichiers de scripts pour le Travail final Ecommerce.

Library             SeleniumLibrary
Library             DateTime
Library             String
Library             Dialogs
Library             OperatingSystem
Library             Collections
Resource            ../Ressources/Keywords/keywords.robot
Variables           ../Ressources/Locators/locators.py
*** Variables ***
${vURL}             http://tutorialsninja.com/demo/index.php?route=common/home
${vBrowser}         chrome

*** Test Cases ***
Test recherche des articles
    Ouvrir navigateur    ${vURL}    ${vBrowser}
    Recherche article    samsung
    Close Browser