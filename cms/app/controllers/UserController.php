<?php

class UserController extends ControllerBase
{

    public function indexAction()
    {
        
    }
    public function formAction()
    {
       if($this->request->isPost()){

           $user = new User();
           $validates = $user->validation($this->request->getPost());
           // now validation works fine, but cancelOnFail in model doesn't seems to work,

           if($validates) {
               echo 'valid inputs';
           }
           else {
               print_r($user->getMessages());
               // now how can we show these error messages below the corresponding input fields in the view.
               // we would also like to show error message as follows, if a field has more than one validation conditions,
               // Eg: say username have notempty and valid e-mail validation set in model so if username is empty show only not empty message,
               // similarly if username is not empty and if its not a valid e-mail , show not valid email message.
           }
           exit();
       }
    }
}

