
<h1>Guía para Ejecutar el Proyecto main.sh en Ubuntu (VirtualBox)</h1>
<ol>
<li>Iniciá la máquina virtual Ubuntu desde VirtualBox.</li>
<li>Abrir la terminal con la combinación de teclas: Ctrl + Alt + T.</li>
<li>Verificá si tenés GIT: 
<code>git --version</code> <br>
Si no lo tenés: <br> 
<code>sudo apt update</code><br>
<code>sudo apt install git -y</code></li>
<li> Crear una carpeta en el explorarador de archivos y clonar el repositorio: <br>
<code>git clone https://github.com/KaryQuinteros/sistemas-operativos.git</code> <br>
</li>
<li>Se debe posicionar en la carpeta sistemas operativos con el comando: <br> 
<code>cd sistemas-operativos</code>
</li>
<li>Dar permisos de ejecucion de los scripts con el comando: <br>
<code>chmod +x main.sh procesos.sh</code></li>

</ol>

