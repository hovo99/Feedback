<?php
namespace Core;

class Validation {
    public static function validMessage(){
        $name =  $_POST['first_name'];
        $lname =  $_POST['last_name'];
        $email =  $_POST['mail'];
        $message =  $_POST['message'];
        $errors = [];
        if (!$lname){
            $lname = " ";
        }
        if (isset($_POST['g-recaptcha-response'])){
            $secreatkey = "6LfCqcIbAAAAAI4UDnuhC-sXGgEXfa44-KCchgvF";
            $ip = $_SERVER['REMOTE_ADDR'];
            $response = $_POST['g-recaptcha-response'];
            $url = "https://www.google.com/recaptcha/api/siteverify?secret=$secreatkey&response=$response&remoteip=$ip";
            $fire = file_get_contents($url);
            $data = json_decode($fire);
            if ($data->success !== true){
                array_push($errors, 'Captcha error');
            }
        }
        
        if (!preg_match("/^[a-z _! \"#$%&'()*+,\-.\\:\/;=?@^_]+$/i", $name)) {
            array_push($errors, 'ERRRORR');
        }
        if (!preg_match("/^[a-z _! \"#$%&'()*+,\-.\\:\/;=?@^_]+$/i", $lname)) {
            array_push($errors, 'asdsdasdd');
        }
        if (!preg_match("/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i", $email)){
            array_push($errors, 'Invalid Email');
        }
        if (strlen($message) < 15) {
            array_push($errors, 'Message a very short');
        }
        if (count($errors) == 0){
            return  [TRUE, $name, $lname, $email, $message ];
        }
    else{
            return [FALSE ,$errors];
        }
    }
}