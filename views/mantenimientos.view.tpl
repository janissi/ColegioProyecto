
<section class="row backgroundcolor">
  <h1>Gestión de Mantenimientos</h1>
  <h2>{{nombre}}</h2>
<table style="background-color:white;"class="col-10 col-offset-1">
  <thead style="background-color:black">
    <tr>
      <th style="color:white">Código</th>
      <th style="color:white">Nombre</th>
      <th style="color:white">Descripción</th>
      <th style="color:white">Precio</th>
      <th>
        <a style="color:white;" href="index.php?page=mantenimiento&mode=INS&codProd=" class="btn">
          +
        </a>
      </th>
    </tr>
  </thead>
  <tbody>
    {{foreach Mantenimientos}}
    <tr>
      <td>{{codProd}}</td>
      <td><a href="index.php?page=mantenimiento&mode=DSP&codProd={{codProd}}">{{nomProd}}</a></td>
      <td>{{descProd}}</td>
      <td>{{precioProd}}</td>
      <td>
        <form action="index.php" method="GET">
          <input name="page" value="mantenimiento" type="hidden"/>
          <input name="mode" value="UPD" type="hidden"/>
          <input name="codProd" value="{{codProd}}" type="hidden"/>
          <button type="submit">Editar</button>
        </form>
        <form action="index.php" method="GET">
          <input name="page" value="mantenimiento" type="hidden" />
          <input name="mode" value="DEL" type="hidden" />
          <input name="codProd" value="{{codProd}}" type="hidden" />
          <button type="submit">Eliminar</button>
        </form>
      </td>
    </tr>
    {{endfor Mantenimientos}}
  </tbody>
</table>
</section>
