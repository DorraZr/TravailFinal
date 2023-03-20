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


*** Test Cases ***
S'inscrire avec un abonnement a la newsletter
    Ouvrir navigateur    ${vURL}    ${vBrowser}
    S'inscrire avec succes
    ...    ${first_name}
    ...    ${last_name}
    ...    ${email}
    ...    ${telephone}
    ...    ${password}
    ...    ${confirm}
    ...    ${newsletter}
    Logout
    Login    ${email}    ${password}
    Logout
    Close Browser
