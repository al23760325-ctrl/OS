NOMBRE="Raul"
FECHA=$(date +"%18/%5/%2026 %2:%24")
USUARIO=$(whoami)
HOST=$(hostname)
KERNEL=$(uname -r)
CPU=$(nproc)
RAM=$(free -m | awk '/Mem:/ {print $2}')
RAM_LIBRE=$(free -m | awk '/Mem:/ {print $4}')
DISCO=$(df -h / | awk 'NR==2 {print $4}')

echo "╔══════════════════════════════════════╗"
echo "  REPORTE DE SISTEMA - RASPBERRY PI"
echo "╚══════════════════════════════════════╝"
echo ""
echo "Estudiante : $RAUL"
echo "Fecha      : $18/5/2026"
echo "Usuario    : $root"
echo ""
echo "─── Hardware ────────────────────"
echo "Kernel     : $KERNEL"
echo "Núcleos CPU: $CPU"
echo "RAM total  : ${RAM} MB"
echo "RAM libre  : ${RAM_LIBRE} MB"
echo "Disco libre: $DISCO"
echo ""
echo "─── Procesos activos ────────────"
NUM_PROC=$(ps aux | wc -l)
echo "Procesos en ejecución: $NUM_PROC"
echo ""
echo "Reporte generado exitosamente."
