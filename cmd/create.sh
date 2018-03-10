cmd_create_help() {
    cat <<_EOF
    create
        Create the squid container '$CONTAINER'.
_EOF
}

rename_function cmd_create orig_cmd_create
cmd_create() {
    [[ -f config ]] || cp $APP_DIR/config .
    ln -sf $APP_DIR/conf

    orig_cmd_create \
        --mount type=bind,src=$(pwd)/config,dst=/etc/privoxy/config,readonly \

}
