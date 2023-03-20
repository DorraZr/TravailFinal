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
${first_name}       Dorra
${last_name}        ZRIGUI
${email}            TestDorra@gmail.com
${telephone}        4385403524
${password}         21210
${confirm}          21210
${newsletter}       1
${article}          Samsunggg


*** Test Cases ***
Recherche article non-disponible
    Ouvrir navigateur    ${vURL}    ${vBrowser}
    Recherche article non-disponible    ${article}
    Close Browser