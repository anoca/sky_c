<h2>Carrinho</h2>

<table class="table">
    <thead>
        <tr>
            <th>ID</th>
            <th>NOME</th>
            <th>QUANTIDADE</th>
            <th>DELETE</th>
        </tr>
    </thead>
    <?php foreach ($carrinho as $produto): ?>
    <tr>
        <td><?=$produto['idProduto']?></td>
        <td><?=$produto['nome']?></td>
        <td><?=$produto['quantidade']?></td>
        <td><a href="./produto/deletarCarrinho/<?=$produto['idProduto']?>" class="btn btn-danger">del</a></td>
    </tr>
    <?php endforeach; ?>
</table>


<a href="./produto" class="btn btn-primary">Adicionar novo produto</a>

