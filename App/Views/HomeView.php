<?php
    namespace App\Views;
    use Core\View;
  
  class HomeView extends view {
    public function index() {
        $this->getTemplate('contactus.twig');
        }
    }
