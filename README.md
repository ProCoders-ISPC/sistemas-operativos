
<h1>MonitoraSys – Herramienta de Monitoreo de Sistemas</h1>

<div align="center">
  <img src="https://img.shields.io/badge/Estado-En%20Desarrollo-yellow" alt="Estado del Proyecto">
  <img src="https://img.shields.io/badge/Lenguaje-Bash-blue" alt="Lenguaje">
  <img src="https://img.shields.io/badge/Plataforma-Ubuntu%20(VirtualBox)-orange" alt="Plataforma">
</div>

<hr>

<h2>💡 ¿Qué es MonitoraSys?</h2>
<p>
  <strong>MonitoraSys</strong> es una herramienta desarrollada en Bash que permite a los usuarios monitorear y gestionar procesos del sistema operativo GNU/Linux.
  Este proyecto fue creado como parte del curso de <strong>Sistemas Operativos</strong> del ISPC, y está pensado para ser utilizado dentro de una máquina virtual Ubuntu.
</p>

<hr>

<h2>📄 Guía para Ejecutar MonitoraSys en Ubuntu (VirtualBox)</h2>

<ol>
  <li><strong>Iniciar Ubuntu:</strong> Iniciá la máquina virtual Ubuntu desde <strong>VirtualBox</strong>.</li>
  <li><strong>Abrir Terminal:</strong> Presioná <code>Ctrl + Alt + T</code> para abrir la terminal.</li>
  <li><strong>Verificar si tenés Git:</strong>
    <pre><code>git --version</code></pre>
    Si no lo tenés, instalalo con:
    <pre><code>sudo apt update
sudo apt install git -y</code></pre>
  </li>
  <li><strong>Clonar el repositorio:</strong>
    <pre><code>git clone https://github.com/ProCoders-ISPC/sistemas-operativos.git</code></pre>
  </li>
  <li><strong>Acceder al proyecto:</strong>
    <pre><code>cd sistemas-operativos</code></pre>
  </li>
  <li><strong>Dar permisos de ejecución:</strong>
    <pre><code>chmod +x main_toolkit.sh procesos.sh</code></pre>
  </li>
  <li><strong>Ejecutar la herramienta:</strong>
    <pre><code>./main_toolkit.sh</code></pre>
  </li>
</ol>

<hr>

<h2>⚙️ Funcionalidad: Gestión de Procesos</h2>
<p>Desde el menú principal podés acceder a la gestión de procesos:</p>
<div align="center">
 <img src="img/captura1.png" alt="Menú Principal" height="150">
</div>

<p>La opción ejecutará el script <code>procesos.sh</code>, el cual permite:</p>
<ul>
  <li>📄 Listar los procesos en ejecución</li>
  <li>🔍 Buscar un proceso por su nombre</li>
  <li>❌ Finalizar un proceso mediante su PID</li>
</ul>

<div align="center">
 <img src="img/captura2.png" alt="Gestión de Procesos" height="300">
</div>

<p>Esta funcionalidad está diseñada para facilitar la administración del sistema sin necesidad de comandos complejos.</p>

<hr>

<h2>📁 Estructura del Proyecto</h2>
<pre><code>sistemas-operativos/
├── main_toolkit.sh
├── procesos.sh
├── img/
└── README.md
</code></pre>

<hr>

<h2>🛠️ Requisitos</h2>
<ul>
  <li>Ubuntu 22.04 o superior (recomendado en VirtualBox)</li>
  <li>Bash Shell</li>
  <li>Git</li>
</ul>


<hr>

<h2>👥 Autores</h2>
<p><strong>ProCoders – ISPC</strong></p>
<ul>
  <li>Daniel Nicolás Paez - Desarrollador</li>
  <li>Laura Micaela Zarate - Scrum Master</li>
  <li>Cristian Isaac Vargas - Desarrollador</li>
  <li>Juan Pablo Sánchez Brandán – Desarrollador</li>
  <li>Karina del Valle Quinteros – Desarrolladora</li>
  <li>Juan Ignacio Gioda – Desarrollador</li>
</ul>

<blockquote><em>Desarrollado por estudiantes de la Tecnicatura en Desarrollo de Software – ISPC</em></blockquote>


