<?php
    
    namespace App\Views;
    
    use Core\View;
    
    class MessagesView extends view
    {
        public function index($post, $numPage, $pageCount)
        {
            $this->getTemplate('messages.twig', null,  $post, $numPage, $pageCount);
        }
    }
