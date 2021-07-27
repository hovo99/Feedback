<?php
    
 namespace App\Controller;
 
 use App\Views\HomeView;
// use Core\Controller;
    
    class HomeController
    {
        public function index() {
            $homeView = new HomeView;
            $homeView->index();
        }
    }