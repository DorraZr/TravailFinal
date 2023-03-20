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
${article}              iPod Nano
${qte}                  1
${address}              rue ontatio est
${city}                 Montréal
${postcode}             H1L 3E5
${payment_details}      Visa card


*** Test Cases ***
Passer une commande
# test n'est pas complet a cause d'un bug dans le site
    Ouvrir navigateur    ${vURL}    ${vBrowser}
    Recherche article     ${article}
    Ajouter article au panier    ${article}
    S'inscrire avec succes
    ...    ${first_name}
    ...    ${last_name}
    ...    ${email}
    ...    ${telephone}
    ...    ${password}
    ...    ${confirm}
    ...    ${newsletter}
    Passer la commande
    ...    ${qte}
    ...    ${first_name}
    ...    ${last_name}
    ...    ${address}
    ...    ${city}
    ...    ${postcode}
    ...    ${payment_details}
    Close Browser
