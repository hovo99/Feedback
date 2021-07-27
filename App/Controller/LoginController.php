<?php
    
    namespace App\Controller;
    
//    use App\Models\SignModel;
    use App\Views\LoginView;
//    use App\Views\LoginView;
    use Core\Controller;
    use App\Models\LoginModel;
//    use App\Views\LoginView;
// use Core\Controller;
    
    class LoginController extends Controller
    {
    
        public function index() {
            if (!isset($_SESSION['id'])) {
                $sign = new LoginView;
                if (isset($_POST['login_button'])) {
//                    echo "stex em ";
//                    var_dump($_POST);
                    $username = htmlspecialchars($_POST['email']);
                    $password = htmlspecialchars($_POST['password']);
                    $signIn = new LoginModel;
                    $loginStatus = $signIn->LogIn($username, $password);
                    if (!$loginStatus) {
                        $sign->index(FALSE);
                    }
                    else {
                        $_SESSION['id'] = $loginStatus['id'];
                        $_SESSION['username'] = $loginStatus['username'];
                        header('Location: /messages');
                    }
                }
                else {
                    $sign->index();
                }
            }
            else {
                header('Location: /messages');
            }
        }
    
        public function signout() {
            $this->unsetSession('id');
            $this->unsetSession('username');
            header('Location: /login');
        }
    
        public function unsetSession($sessionName) {
            if (isset($_SESSION[$sessionName])) {
                unset($_SESSION[$sessionName]);
            }
        }
        
//        public function index() {
//
//            var_dump($_SESSION);
//            $loginView = new LoginView();
//            $loginView->index();
//            $email = $_POST['email'];
//            $password = $_POST['password'];
////            var_dump($state);
//            echo $email;
//            echo $password;
////            die();
//        }
    }