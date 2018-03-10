cmd_config_help() {
    cat <<_EOF
    config
        Configure the guest system inside the container.
_EOF
}

cmd_config() {
        mkdir -p scripts
        cp -a $APP_DIR/scripts/* scripts/
for file in scripts/*; do
        docker cp $file $CONTAINER:/usr/local/bin/
done

ds inject privoxy-start.sh
}
