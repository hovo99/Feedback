<?php

    namespace App\Views;
    
    use Core\View;

    class PageView extends View {
        public function index($pageData){
            $this->getTemplate("message-page.twig", NULL,  $pageData);
        }
    }