<?php

    namespace App\Models;
        use Core\Model;
        
    class RemoveModel extends Model{
        public function getID($id){
        $pdo = Model::getDB();
        $state = $pdo->prepare("DELETE FROM message WHERE `id` = ?");
        $state->bindParam(1, $id);
        $state->execute();
        }
    }