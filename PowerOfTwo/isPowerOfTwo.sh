#!/bin/bash

echo "Check: $1"

scale=0

check()
{
  val=$1
  echo "  $val .."

  if (($val > 1))
  then
    if (($val % 2 == 0))
    then
      let "scale++"
      let "val = $val / 2"
      check $val
      exit $val
    fi
  fi

  if (($val == 1))
  then
    echo "Power of two! 2^$scale"
  else
    echo "Not a power of two, failed at $val."
  fi
  exit 
}

check $1
