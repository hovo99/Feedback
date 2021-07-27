<?php
    
    namespace App\Models;

    use PDO;
    use Core\Model;
    use Core\Router;
    
    class MessagesModel extends Model {
        public static $messagePerPage = 3;
        public static function getMessages($numPage){
            $messagePerPage = static::$messagePerPage;
            
                $db = static::getDB();
                
                $leftLimit = $messagePerPage * ($numPage - 1);
                $state = $db->prepare("SELECT * FROM `message` LIMIT $leftLimit, $messagePerPage");
                $state->execute();
            $results = $state->fetchAll(PDO::FETCH_ASSOC);
            return $results;
        }
         public static function getPageCount(){
            
             $db = static::getDB();
             $total = $db->query('SELECT COUNT(*) FROM message')->fetchColumn();
             return ceil($total/self::$messagePerPage);
         }
        
         public function getPage($id){
         $con = static::getDB();
         $state = $con->prepare("SELECT `status` FROM `message` where `id` = ?");
         $state->bindParam(1, $id);
         $state->execute();
         $status = $state->fetchColumn();
         if ($status == 0){
             $status = 1;
         }
         $state = $con->prepare("UPDATE `message` SET `STATUS` = ? WHERE `id` = ? ");
         $state->execute([$status, $id]);
         
         $pdo = static::getDB();
         $stmt = $pdo->prepare("SELECT * FROM `message` WHERE `id` = ?");
         $stmt->bindParam(1, $id);
         $stmt->execute();
         $stmt = $stmt->fetch();
         return $stmt;
         }
    }