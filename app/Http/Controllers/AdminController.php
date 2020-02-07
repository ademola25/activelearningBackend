<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

class AdminController extends Controller
{
    /**
     * @return Response for all exixting users
     */
    public function allusers()
    {
        // get all users
        $allUsers = User::orderBy('created_at')->get();

        // if the users collection is not null return all users
        if ($allUsers !== null) { 
            $response = [
                'success' => true,
                'message' => 'All Users!!',
                'data' => $allUsers,
            ];
            return response()->json($response, 200);
        } else {
            return response()->json(
                [
                    'success'=> false,
                    'message' => 'No User was found',
                ],
                     200);
            }
    }

    public function editUser($id)
    {
        // get the a specified user according to their id
        $user = User::where('id', $id)->first();
            if ($user !== null) {

            
            $response = [
                'success' => true,
                'message' => 'User successfully found!!',
                'data' => $user,
            ];
            return response()->json($response, 200);
        } else {

            return response()->json(
                [
                    'success'=> false,
                    'message' => 'User not found',
                ],
                     500);
            }
    }

    /**
     * delete a specific user
     */
    public function deleteUser($id)
    {
        $user = User::find($id);
            // if user was found
            if($user) {
                $user->delete();
                $response = [
                    'success' => true,
                    'message' => 'User successfully deleted!!',
                ];
            return response()->json($response, 200);
        } else {
            return response()->json(
                [
                    'success'=> false,
                    'message' => 'User not found',
                ],
                 500);
            }
    }
}
