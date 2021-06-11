*** Settings ***
Library     SeleniumLibrary

Resource    ${CURDIR}/../keywords/locator.robot
Resource    ${CURDIR}/../keywords/keywords.robot

Variables    ${CURDIR}/config.yaml
Variables    ${CURDIR}/translation.yaml