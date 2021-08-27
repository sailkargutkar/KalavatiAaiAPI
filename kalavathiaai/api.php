<?php
	header('Content-Type: application/json');
	ini_set('display_errors',0);
    
    $config = mysqli_connect("localhost", "u393787823_aai_admin", "kW2$3Jdg7["); 
    if (!$config)
    	die('Error: ' . mysqli_error());

    mysqli_select_db($config, "u393787823_kalavathiaaidb");
    
    if (!$_REQUEST) {
    	$tbl_row['message'] = 'Error';
    	echo json_encode($tbl_row);
    	die;
    }

    $current_date = date("Y-m-d h:i:s");



	/**
	 * This function use to generate random number
	 *
	 * @author Sail kargutkar 2021
	 *
	*/
	function generate_random_user_id($initial, $branch_id)
	{
		// STUBranchID-RandomNumber
		$rand_number = rand(1000,9999);
		$rand_number = $initial.$branch_id."-".$rand_number;

		$sql_query = "SELECT COUNT(*) FROM `user_details` WHERE `user_id` = '".$rand_number."'";

		$run = mysqli_query($config,$sql_query);
		$tbl_row = mysqli_fetch_row($run);

        if($tbl_row[0] == 0)
        {
        	return $rand_number;
        }
        else
        {
        	generate_random_user_id($initial, $branch_id);
        }
	}

    switch ($_REQUEST['api_no']) {

    	case '1':
    		// Login

    		$sql_query = "SELECT * FROM `user_details` WHERE `username` = '".$_REQUEST['username']."' AND `password` = '".$_REQUEST['password']."'";
    		  
    		$run = mysqli_query($config,$sql_query);
    		$tbl_row = mysqli_fetch_assoc($run);

    		if(mysqli_num_rows($run) > 0)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}

    		break;

    	//-----------------***************-----------------
    	// All insert queries
    	//-----------------***************-----------------
    	
    	case '2':
    		// Attendance table insert new attendance
    		
    		file_put_contents("./test.txt",$_POST);

    		if ($_REQUEST['action'] == '') {
    			$_REQUEST['action'] = 'Default';
    		}
    		$sql_query = "INSERT INTO `attendance_table` (`balaposana_id`, `name`, `branch_id`,`attendance`,`action`, `student_id`, `created_by`) VALUES(".$_REQUEST['balaposana_id'].", '".$_REQUEST['name']."', ".$_REQUEST['branch_id'].", '".$_REQUEST['attendance']."', '".$_REQUEST['action']."', ".$_REQUEST['student_id'].", ".$_REQUEST['created_by'].")";
    		
    		$run = mysqli_query($config,$sql_query);

    		if($run)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;
    	
    	case '3':
    		// Inward attendance table insert new attendance

    		$sql_query = "INSERT INTO `inward_table` (`balaposana_id`, `name`, `branch_id`,`attendance`, `student_id`, `created_by`) VALUES(".$_REQUEST['balaposana_id'].", '".$_REQUEST['name']."', ".$_REQUEST['branch_id'].", '".$_REQUEST['attendance']."', ".$_REQUEST['student_id'].", ".$_REQUEST['created_by'].")";
    		
    		$run = mysqli_query($config,$sql_query);

    		if($run)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;
    	
    	case '4':
    		// Branch table insert new branch

    		$sql_query = "INSERT INTO `branch` (`branch_name`, `address`, `city`, `state`, `country`, `contact_number`, `landline_number`, `description`, `created_by`) VALUES('".$_REQUEST['branch_name']."', '".$_REQUEST['address']."', '".$_REQUEST['city']."', '".$_REQUEST['state']."', '".$_REQUEST['country']."', '".$_REQUEST['contact_number']."', '".$_REQUEST['landline_number']."', '".$_REQUEST['description']."', ".$_REQUEST['created_by'].")";
    		
    		$run = mysqli_query($config,$sql_query);

    		if($run)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;
    	
    	case '5':
    		// User details table insert new user
    		$user_id = generate_random_user_id("USER", $_REQUEST['branch_id']);

            $password = generate_random_user_id("USER", $user_id);

    		$sql_query = "INSERT INTO `user_details`(`user_id`, `username`, `password`, `branch_id`, `role_id`, `mobile`, `email`, `address`, `created_by`) VALUES('".$user_id."', '".$_REQUEST['username']."', '".$password."', ".$_REQUEST['branch_id'].", ".$_REQUEST['role_id'].", '".$_REQUEST['mobile']."', '".$_REQUEST['email']."', '".$_REQUEST['address']."', ".$_REQUEST['created_by'].")";

    		$run = mysqli_query($config,$sql_query);

    		if($run)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;
    	
    	case '6':
    		// Students table insert new student
    		$student_id = generate_random_user_id("STU", $_REQUEST['branch_id']);

    		$sql_query = "INSERT INTO `students`(`student_id`, `student_name`, `balopasana_id`, `gender`, `DOB`, `branch_id`, `address`, `city`, `state`, `country`, `phone_number`, `created_by`) VALUES('".$student_id."', '".$_REQUEST['student_name']."', ".$_REQUEST['balopasana_id'].", '".$_REQUEST['gender']."', '".$_REQUEST['DOB']."', ".$_REQUEST['branch_id'].", '".$_REQUEST['address']."', '".$_REQUEST['city']."', '".$_REQUEST['state']."', '".$_REQUEST['country']."', '".$_REQUEST['phone_number']."', ".$_REQUEST['created_by'].")";

    		$run = mysqli_query($config,$sql_query);

    		if($run)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;
    	
    	case '7':
    		// Head count table insert new Head count

    		$sql_query = "INSERT INTO `head_count`(`branch_id`, `count`, `created_by`) VALUES(".$_REQUEST['branch_id'].", ".$_REQUEST['count'].", ".$_REQUEST['created_by'].")";

    		$run = mysqli_query($config,$sql_query);

    		if($run)
    		{
	    		$tbl_row['message'] = 'Success';
    		    echo json_encode($tbl_row);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

    	//-----------------***************-----------------
    	// All Select queries
    	//-----------------***************-----------------

    	case '8':
    		// Get all active attendance records

    		$sql_query = "SELECT * FROM `attendance_table` WHERE `deleted_date` IS NULL";
    		  
    		$run = mysqli_query($config,$sql_query);

    		if(!empty($run))
    		{
				while($row = mysqli_fetch_assoc($run)) 
				{
			        $return[] = $row;
			    }
			    $data['data'] = $return;
			    echo json_encode($data);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

    	case '9':
    		// Get all active branch records

    		$sql_query = "SELECT * FROM `branch` WHERE `deleted_date` IS NULL";
    		  
    		$run = mysqli_query($config,$sql_query);

    		if(!empty($run))
    		{
				while($row = mysqli_fetch_assoc($run)) 
				{
			        $return[] = $row;
			    }
			    $data['data'] = $return;
			    echo json_encode($data);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

    	case '10':
    		// Get all active head count records

    		$sql_query = "SELECT * FROM `head_count`";
    		  
    		$run = mysqli_query($config,$sql_query);

    		if(!empty($run))
    		{
				while($row = mysqli_fetch_assoc($run)) 
				{
			        $return[] = $row;
			    }
			    $data['data'] = $return;
			    echo json_encode($data);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

    	case '11':
    		// Get all active inward table records

    		$sql_query = "SELECT * FROM `inward_table` WHERE `deleted_date` IS NULL";
    		  
    		$run = mysqli_query($config,$sql_query);

    		if(!empty($run))
    		{
				while($row = mysqli_fetch_assoc($run)) 
				{
			        $return[] = $row;
			    }
			    $data['data'] = $return;
			    echo json_encode($data);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

    	case '12':
    		// Get all active students table records

    		$sql_query = "SELECT * FROM `students` WHERE `deleted_date` IS NULL";
    		  
    		$run = mysqli_query($config,$sql_query);

    		if(!empty($run))
    		{
				while($row = mysqli_fetch_assoc($run)) 
				{
			        $return[] = $row;
			    }
			    $data['data'] = $return;
			    echo json_encode($data);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

    	case '13':
    		// Get all active user details table records

    		$sql_query = "SELECT * FROM `user_details` WHERE `deleted_date` IS NULL";
    		  
    		$run = mysqli_query($config,$sql_query);

    		if(!empty($run))
    		{
				while($row = mysqli_fetch_assoc($run)) 
				{
			        $return[] = $row;
			    }
			    $data['data'] = $return;
			    echo json_encode($data);
    		}
    		else
    		{
    			$tbl_row['message'] = 'Error';
    		    echo json_encode($tbl_row);
    		}
    		break;

        case '14':
            // Get particular active branch records

            $sql_query = "SELECT * FROM `branch` WHERE `deleted_date` IS NULL AND `branch_id` =".$_REQUEST['branch_id'];
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                while($row = mysqli_fetch_assoc($run)) 
                {
                    $return[] = $row;
                }
			    $data['data'] = $return;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '15':
            // Get particular active user records

            $sql_query = "SELECT * FROM `user_details` WHERE `deleted_date` IS NULL AND `user_id` =".$_REQUEST['user_id'];
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                while($row = mysqli_fetch_assoc($run)) 
                {
                    $return[] = $row;
                }
			    $data['data'] = $return;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '15':
            // Get particular active user records

            $sql_query = "SELECT * FROM `students` WHERE `deleted_date` IS NULL AND `student_id` =".$_REQUEST['student_id'];
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                while($row = mysqli_fetch_assoc($run)) 
                {
                    $return[] = $row;
                }
			    $data['data'] = $return;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '16':
            // Get head count records

            $sql_query = "SELECT * FROM `head_count` WHERE `head_count_id` =".$_REQUEST['head_count_id'];
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                while($row = mysqli_fetch_assoc($run)) 
                {
                    $return[] = $row;
                }
			    $data['data'] = $return;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '17':
            // Delete user record

            $sql_query = "UPDATE `user_details` SET `deleted_by` = '".$_REQUEST['user_id']."', `deleted_date` = '".$current_date."' WHERE `user_id` = '".$_REQUEST['user_id']."'";
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '18':
            // Delete branch record

            $sql_query = "UPDATE `branch` SET `deleted_by` = '".$_REQUEST['branch_id']."', `deleted_date` = '".$current_date."' WHERE `branch_id` = '".$_REQUEST['branch_id']."'";
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '19':
            // Delete student record

            $sql_query = "UPDATE `students` SET `deleted_by` = '".$_REQUEST['student_id']."', `deleted_date` = '".$current_date."' WHERE `student_id` = '".$_REQUEST['student_id']."'";
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '20':
            // Update user

            $sql_query = "UPDATE `user_details` SET `username` = '".$_REQUEST['username']."', `password` = '".$_REQUEST['password']."', `branch_id` = '".$_REQUEST['branch_id']."', `role_id` = '".$_REQUEST['role_id']."', `mobile` = '".$_REQUEST['mobile']."', `email` = '".$_REQUEST['email']."', `address` = '".$_REQUEST['address']."', `created_by` = '".$_REQUEST['created_by']."' WHERE `user_id` = '".$_REQUEST['user_id']."'";
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '21':
            // Update branch

            $sql_query = "UPDATE `branch` SET `branch_name` = '".$_REQUEST['branch_name']."', `address` = '".$_REQUEST['address']."', `city` = '".$_REQUEST['city']."', `state` = '".$_REQUEST['state']."', `country` = '".$_REQUEST['country']."', `contact_number` = '".$_REQUEST['contact_number']."', `landline_number` = '".$_REQUEST['landline_number']."', `description` = '".$_REQUEST['description']."', `created_by` = '".$_REQUEST['created_by']."' WHERE `branch_id` = '".$_REQUEST['branch_id']."'";
              
            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '22':
            // Update branch

            $sql_query = "UPDATE `students` SET `student_name` = '".$_REQUEST['student_name']."', `balopasana_id` = '".$_REQUEST['balopasana_id']."', `gender` = '".$_REQUEST['gender']."', `DOB` = '".$_REQUEST['DOB']."', `branch_id` = '".$_REQUEST['branch_id']."', `address` = '".$_REQUEST['address']."', `city` = '".$_REQUEST['city']."', `state` = '".$_REQUEST['state']."', `country` = '".$_REQUEST['country']."', `phone_number` = '".$_REQUEST['phone_number']."', `created_by` = '".$_REQUEST['created_by']."' WHERE `student_id` = '".$_REQUEST['student_id']."'";


            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

        case '23':
            // Update head count

            $sql_query = "UPDATE `head_count` SET `branch_id` = '".$_REQUEST['branch_id']."', `count` = '".$_REQUEST['count']."', `created_by` = '".$_REQUEST['created_by']."' WHERE `head_count_id` = '".$_REQUEST['head_count_id']."'";


            $run = mysqli_query($config,$sql_query);

            if(!empty($run))
            {
                $tbl_row['message'] = 'Success';
                
			    $data['data'] = $tbl_row;
			    echo json_encode($data);
            }
            else
            {
                $tbl_row['message'] = 'Error';
                echo json_encode($tbl_row);
            }
            break;

    	default:
    		echo "Error";
    		break;
    }
    die;
?>