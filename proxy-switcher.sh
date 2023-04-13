#!/bin/bash

function on {
  echo -e "\e[32mSet-up the proxy:\e[0m ${proxy}"

  export http_proxy="${proxy}"
  export https_proxy="${proxy}"
  export HTTP_PROXY="${proxy}"
  export HTTPS_PROXY="${proxy}"
}

function off {
  echo -e "\e[32mRemove the proxy\e[0m"

  unset http_proxy
  unset https_proxy
  unset HTTP_PROXY
  unset HTTPS_PROXY
}

if [[ $1 != "" ]]; then
  proxy=$1
  off
  on
else
  off
fi
