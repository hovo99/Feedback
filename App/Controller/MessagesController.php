<?php
    
    namespace App\Controller;
    
    use App\Models\RemoveModel;
    use App\Views\MessagesView;
    use App\Models\MessagesModel;
    use App\Views\PageView;
    use Core\Controller;
    use Core\Model;
    use Core\Router;
    use Core\View;

    class MessagesController extends Controller
    {
        public function __construct()
        {
            if (!isset($_SESSION['id'])) {
                Router::get404();
            }
        }
        public function page($numPage) {
            if(isset($numPage)) {
                $this->index($numPage);
            }
        }
        public function index($numPage = 1) {
        
        $posts = MessagesModel::getMessages($numPage);
            $asd = MessagesModel::getPageCount();
            $messagesView = new MessagesView();
            $messagesView->index($posts, $numPage, $asd);
//            echo $asd;
            
//            echo $numPage;
//            echo $pageCount;
        }
        public function post($id){
            $message = new MessagesModel;
            $messageID = $message->getPage($id);
            $page = new PageView();
            $page->index($messageID);
//            var_dump($messageData);
//            echo $id;
        }

        public function delete(){
            if (array_key_exists('delete_file', $_POST)) {
//                var_dump($_POST);
                $id = $_POST['delete_file'];
                $model = new RemoveModel;
                $model->getID($id);
                $this->index();
                
//                echo "jnjvela";
            }
        }
        
    }