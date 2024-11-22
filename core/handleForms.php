<?php  

require_once 'dbConfig.php';
require_once 'models.php';


if (isset($_POST['insertUserBtn'])) {
    $first_name = trim($_POST['first_name']);
    $last_name = trim($_POST['last_name']);
    $email = trim($_POST['email']);
    $gender = trim($_POST['gender']);
    $address = trim($_POST['address']);
    $birthday = trim($_POST['birthday']);
    $degree = trim($_POST['degree']);
    $experience = trim($_POST['experience']);
    $position = trim($_POST['position']);

    if (empty($first_name) || empty($last_name) || empty($email) || 
        empty($gender) || empty($address) || empty($birthday) || 
        empty($degree) || empty($experience) || empty($position)) {

        $_SESSION['message'] = "Please make sure there are no empty input fields";
        $_SESSION['status'] = "400";
        header("Location: ../insert.php");
        exit;
    }

    $insertUser = insertNewUser(
        $pdo,
        $first_name,
        $last_name,
        $email,
        $gender,
        $address,
        $birthday,
        $degree,
        $experience,
        $position
    );

    if ($insertUser) {
        $_SESSION['message'] = "Successfully inserted!";
        header("Location: ../index.php");
        exit;
    } else {
        $_SESSION['message'] = "Failed to insert data.";
        $_SESSION['status'] = "400";
        header("Location: ../insert.php");
        exit;
    }
}

if (isset($_POST['editUserBtn'])) {
	$editUser = editUser($pdo,$_POST['first_name'], $_POST['last_name'], $_POST['email'], $_POST['gender'], $_POST['address'], $_POST['birthday'], $_POST['degree'], $_POST['experience'], $_POST['position'], $_GET['id']);

	if ($editUser) {
		$_SESSION['message'] = "Successfully edited!";
		header("Location: ../index.php");
	}
}

if (isset($_POST['deleteUserBtn'])) {
	$deleteUser = deleteUser($pdo,$_GET['id']);

	if ($deleteUser) {
		$_SESSION['message'] = "Successfully deleted!";
		header("Location: ../index.php");
	}
}

if (isset($_GET['searchBtn'])) {
	$searchForAUser = searchForAUser($pdo, $_GET['searchInput']);
	foreach ($searchForAUser as $row) {
		echo "<tr> 
				<td>{$row['id']}</td>
				<td>{$row['first_name']}</td>
				<td>{$row['last_name']}</td>
				<td>{$row['email']}</td>
				<td>{$row['gender']}</td>
				<td>{$row['address']}</td>
				<td>{$row['birthday']}</td>
				<td>{$row['degree']}</td>
				<td>{$row['experience']}</td>
                <td>{$row['position']}</td>
			  </tr>";
	}
}

?>