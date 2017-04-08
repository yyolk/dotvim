#!/usr/bin/env bash


prompt_continue()
{
echo "$@"
read -r -p "Are you sure? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        true
        ;;
    *)
        false
        ;;
esac
}
