<?php

function conn() {
    $cnx = mysqli_connect("localhost", "id7262222_ana", "ANA123456", "id7262222_loja");
    if (!$cnx) die('Deu errado a conexao!');
    return $cnx;
}