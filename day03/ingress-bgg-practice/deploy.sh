declare -a YAML_FILES=( "bgg-namespace.yaml" "bgg-config.yaml" "bgg-app.yaml" "bgg-database.yaml")

for yaml_file in "${YAML_FILES[@]}"
do
    kubectl apply -f "$yaml_file"
done
