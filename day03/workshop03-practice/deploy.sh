declare -a YAML_FILES=( "codeserver-namespace.yaml" "codeserver-app.yaml")

for yaml_file in "${YAML_FILES[@]}"
do
    kubectl apply -f "$yaml_file"
done
