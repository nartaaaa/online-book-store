<?php

function get_all_books(){
    $sql = "SELECT * FROM books";
    $stmt= $con->prepare($sql);
    $stmt->execute();

    if ($stmt-> rowCount()>0){
        $books = $stmt->fetchAll();
    }else{
        $books = 0;
    }
    return $books;
}
?>