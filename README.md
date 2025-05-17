<div align="center">
<h1>Guía para Ejecutar MonitoraSys en Ubuntu (VirtualBox)</h1>
</div>

<ol>
<li>Iniciá la máquina virtual Ubuntu desde VirtualBox.</li>
<li>Abrir la terminal con la combinación de teclas: Ctrl + Alt + T.</li>
<li>Verificá si tenés GIT: 
<div align="center">
<code>git --version</code> <br>
</div>

Si no lo tenés: <br> 

<div align="center">
<code>sudo apt update</code><br>
<code>sudo apt install git -y</code>
</div>
<br>
</li>
<li> Crear una carpeta en el explorador de archivos y clonar el repositorio: <br>

<div align="center">
<code>git clone https://github.com/ProCoders-ISPC/sistemas-operativos.git</code> <br>
</div>
 <br>

</li>
<li>Posicionarse en la carpeta sistemas-operativos con el comando: <br> 
<div align="center">
<code>cd sistemas-operativos</code> <br>
</div>
 <br>
</li>

<li>Dar permisos de ejecución a los scripts con el comando: <br>
<div align="center">
<code>chmod +x main_toolkit.sh procesos.sh</code>
</div>
 <br>
</li>
<li>Ejecutar el toolkit principal con el comando: <br>
<div align="center">
<code>./main_toolkit.sh</code>
</div>
 <br>
</li>
</ol>

<div align="center">
<h2>Funcionalidad de Gestión de Procesos</h2>
</div>

<p>El menú principal del toolkit incluye una opción para gestionar procesos.

<div align="center">
  <img height="150" src="https://i.ibb.co/SwWPWnGR/Captura-de-pantalla-2025-05-17-123317.png"  />
</div>

 Al seleccionar esta opción, se ejecutará el script <code>procesos.sh</code>, que permite:</p>
<ul>
<li>Listar los procesos en ejecución.</li>
<li>Buscar un proceso específico por su nombre.</li>
<li>Finalizar un proceso ingresando su PID.</li>
</ul>

###

<div align="center">
  <img height="300" src="https://i.ibb.co/ynnqH46N/Captura-de-pantalla-2025-05-17-123554.png"  />
</div>

###
<p>Esta funcionalidad está diseñada para facilitar la administración de procesos en el sistema operativo.</p>

