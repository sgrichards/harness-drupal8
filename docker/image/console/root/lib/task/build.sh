#!/bin/bash

function task_build()
{
    case "$1" in
        "pass-1")
            _build_pass_1
            ;;
        "pass-2")
            _build_pass_2
            ;;
    esac
}

_build_pass_1()
{
    task "skeleton:apply"
    task "composer:install"
}

_build_pass_2()
{
    echo "Pass 2"
}
