<?php
    
    namespace App\Models;
    
    use Core\Model;
    
    class MessagesInsert extends Model {
        
        public function InsertMessages($messageData) {
                $pdo = Model::getDB();
            $state = $pdo->prepare("INSERT INTO `message` (`first_name`, `last_name`, `mail`, `message`) VALUES (?,?,?,?)");
            $state->bindParam(1, $messageData[1]);
            $state->bindParam(2, $messageData[2]);
            $state->bindParam(3, $messageData[3]);
            $state->bindParam(4, $messageData[4]);
            $state->execute();
                if ($state) {
                    return TRUE;
                }
                else {
                    return FALSE;
                }
        }
        
    }