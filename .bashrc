better_pushd(){

    if [[ $1 == "-" ]]; then

        popd > /dev/null

    else

        if [[ $# -eq 0 ]]; then

            builtin cd

        else

            pushd "$1" > /dev/null

        fi

    fi

}




alias cd=better_pushd
