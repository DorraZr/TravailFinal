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
${first_name1}      XXX
${last_name1}       YYY
${telephone1}       0000000000


*** Test Cases ***
S'inscrire avec des informations deja existantes
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
    S'inscrire avec echec
    ...    ${first_name1}
    ...    ${last_name1}
    ...    ${email}
    ...    ${telephone1}
    ...    ${password}
    ...    ${confirm}
    ...    ${newsletter}
    Close Browser
