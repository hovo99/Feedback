<?php
    
 namespace App\Controller;
 
 use App\Views\HomeView;
    
    class HomeController
    {
        public function index() {
            $homeView = new HomeView;
            $homeView->index();
        }
    }