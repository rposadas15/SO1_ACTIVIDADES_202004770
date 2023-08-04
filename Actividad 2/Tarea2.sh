# Actividad No. 2

# Pedir la variable de GITHUB_USER
read -p "Ingrese nombre de usuario: " GITHUB_USER

# Consultar la URL a la API de GitHub
URL_GITHUB="https://api.github.com/users/$GITHUB_USER"
RESPONSE=$(curl -s "$API_GITHUB")

# Obtener los valores para crear el mensaje
ID_GITHUB=$(echo "$RESPONSE" | jq -r '.id')
CREATED_AT_GITHUB=$(echo "$RESPONSE" | jq -r '.created_at')

# Imprimir el mensaje -> "Hola<github_user>. User ID:<id>. Cuenta fue creada el: <created_at>."
echo "Hola $GITHUB_USER. User ID: $ID_GITHUB. Cuenta fue creada el: $CREATED_AT_GITHUB."

# Fecha actual -> "dia-mes-año"
A_DATE=$(date + "%d-%m-%Y")

# Crear el directorio -> /tmp/<fecha>/
C_DIR="/tmp/$A_DATE"
mkdir -p "$C_DIR"

# Crear archivo -> saludos.log
C_FILE="$C_DIR/saludos.log"
echo "Hola $GITHUB_USER. User ID: $ID_GITHUB. Cuenta fue creada el: $CREATED_AT_GITHUB." >> "$C_FILE"

# Crear cronjob para ejecutar cada 5 minutos
CROB_TAB="*/5 * * * * $(realpath $0)"
(crontab -l; echo "$CROB_TAB") | crontab -
