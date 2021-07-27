<?php
    namespace App\Controller;
    use App\Models\MessagesInsert;
    use Core\Validation;
    use Core\Router;
    use Core\View;
    use App\Controller\HomeController;
    
    class ValidationController  extends Validation {
        public function index() {
            if (isset($_POST['message_send'])) {
                $messageData = $this->validMessage();
                $sendStatus = FALSE;
                if ($messageData[0]) {
                    $insert = new MessagesInsert;
                    $sendStatus = $insert->InsertMessages($messageData);
                }
                echo $sendStatus;
                $homeView = new View;
                $homeView->getTemplate('contactus.twig', $sendStatus, $messageData);
            }
            else {
                Router::get404();
            }
        }
    
    }