<?php 

# File upload helper function 
function upload_file($files, $allowed_exs, $path){
   # get data and store them in var
   $file_name = $files['name'];
   $tmp_name  = $files['tmp_name'];
   $error     = $files['error'];

   # if there is no error occurred while uploading
   if ($error === 0) {
   	  
   	  # get file extension store it in var
   	  $file_ex = pathinfo($file_name, PATHINFO_EXTENSION);

   	  
	  $file_ex_lc = strtolower($file_ex);

		if (in_array($file_ex_lc, $allowed_exs)) {
			
			$new_file_name = uniqid("",true).'.'.$file_ex_lc;

			
			$file_upload_path = '../uploads/'.$path.'/'.$new_file_name;
			
			move_uploaded_file($tmp_name, $file_upload_path);

			
            $sm['status'] = 'success';
	        $sm['data']   = $new_file_name;

	        
	        return $sm;
            
		}else{
		 
	      $em['status'] = 'error';
	      $em['data']   = "You can't upload files of this type";

	      
	      return $em;
		}
   }else {
   	 
      $em['status'] = 'error';
      $em['data']   = 'Error occurred while uploading!';

      
      return $em;
   }
}