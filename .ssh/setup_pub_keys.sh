#!/bin/bash
while read k
do
  echo "Key: ${k}"
  ka=(${k})
  echo -n "${k}" > "${ka[2]}.pub"
done < <(ssh-add -L)
