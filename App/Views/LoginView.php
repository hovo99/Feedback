<?php
    namespace App\Views;
    use Core\View;
    
    class LoginView extends view {
        public function index($status =  true) {
            $this->getTemplate('login.twig', $status);
        }
    }
