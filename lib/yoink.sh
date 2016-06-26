#!/bin/bash

function deyoink () {
  bash "${YOINK_HOME}/deyoink/${1}.sh"
}

function yoink () {
  bash "${YOINK_HOME}/yoink/${1}.sh"
}

function reyoink () {
  bash "${YOINK_HOME}/deyoink/${1}.sh"
  bash "${YOINK_HOME}/yoink/${1}.sh"
}
