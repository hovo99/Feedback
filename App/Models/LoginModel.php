<?php
    
    namespace App\Models;

    use Core\Model;

    class LoginModel extends Model
    {
        public function login ($username, $password){
            $pdo = Model::getDB();
            $state =$pdo->prepare("SELECT * FROM `users` WHERE `username` = ? AND `password` = ? ");
            $state->bindParam(1, $username);
            $state->bindParam(2, $password);
            $state->execute();
            $state = $state->fetch();
            return $state ?: false;
        }
    }