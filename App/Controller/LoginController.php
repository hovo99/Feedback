<?php
    
    namespace App\Controller;
    
    use App\Views\LoginView;
    use App\Models\LoginModel;
    
    class LoginController
    {
        public function index() {
            if (!isset($_SESSION['id'])) {
                $sign = new LoginView;
                if (isset($_POST['login_button'])) {
                    $username = htmlspecialchars($_POST['email']);
                    $password = htmlspecialchars($_POST['password']);
                    $signIn = new LoginModel;
                    $loginStatus = $signIn->LogIn($username, $password);
                    if (!$loginStatus) {
                        $sign->index(FALSE);
                        echo "Incorrect Username or password";
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
    }