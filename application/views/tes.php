<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <?php foreach ($titik as $key) { ?>
    total = <?php echo $key->nilai; ?>
  <?php  } ?>

<!--  -->

<table>
  <thead>
    <tr>
      <th>anggota penjumlahan yang menghasilkan total</th>
    </tr>
  </thead>
  <?php foreach ($jarak as $key ) { ?>
    <tr>
      <td><?php echo $key->jarak; ?></td>
    </tr>
<?php  } ?>
</table>

  </body>
</html>
