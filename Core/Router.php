<?php
    
    namespace Core;
    
    use App\Views\ErrorView;
    
    class Router {
        
        public function __construct() {
            $uri = trim($_SERVER['REQUEST_URI'], '/');
            $this->run(explode('/', $uri));
        }
        
        public function run($uri) {
            if ($uri[0] == '') {
                $controllerName = 'Home';
            }
            else {
                $controllerName = $uri[0];
            }
            $actionName = 'index';
            if (isset($uri[1])) {
                if ($uri[1] != '') {
                    $actionName = $uri[1];
                }
            }
            $controller = ucfirst($controllerName) . "Controller";
            $controller = "\App\Controller\\$controller";
            if (class_exists($controller)) {
                $controller = new $controller;
                if (method_exists($controller, $actionName) && isset($uri[2])) {
                    $controller->$actionName($uri[2]);
                }
                elseif (method_exists($controller, $actionName)) {
                    $controller->$actionName();
                }
                else {
                    $this->get404();
                }
            }
            else {
                $this->get404();
            }
        }
        public static function get404() {
            $view = new ErrorView;
            $view->index();
            die();
        }
    }