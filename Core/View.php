<?php
    
    
    namespace Core;
    
    use Twig\Environment;
    use Twig\Loader\FilesystemLoader;
    
    class View {
        
        public function getTemplate($templateName, $status = NULL, $messageData = NULL, $pageInfo = NULL, $pageCount = NULL) {
            $templateDir = "../App/Views/template/$templateName";
            $data = [
                'templateName' => $templateName,
                'status' => $status,
                'messageData' => $messageData,
                'pageInfo' => $pageInfo,
                'pageCount' => $pageCount,
            ];
            require_once '../vendor/autoload.php';
            $loader = new FilesystemLoader('.././App/Views/template');
            $twig = new Environment($loader, ['debug' => true,]);
            $twig->addExtension(new \Twig\Extension\DebugExtension());
            
            $twig->addGlobal("session", $_SESSION);
            
            if (file_exists($templateDir)) {
                echo $twig->render('base.twig', ['data' => $data]);
            }
            else {
                Router::get404();
            }
        }
        
    }