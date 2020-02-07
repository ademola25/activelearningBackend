<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\Book;
use DB;
use Validator;

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
     * Update a Specific user's record
     */
    public function updateUser(Request $request, $id)
    {
        // find the user
        $user = User::find($id);
            if($user) {
            
            // update the user
            $updatedUser = $user->update($request->all());
            $getUpdatedUser = User::find($id);
            $response = [
                'success' => true,
                'message' => 'User successfully updated!!',
                'data' => $getUpdatedUser,
            ];
            return response()->json($response, 200);
            } else {
                return response()->json(
                    [
                        'success'=> false,
                        'message' => 'User not updated',
                    ],
                    200);
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

    /**
     * Add a new book with this method
     */
    public function createBook(Request $request)
    {

        // using transactions to store books
        DB::beginTransaction();
        try {
            $input = $request->all();

            // create rules to make sure all rules are satisfied
            $rules = [
                'title' => 'required|string',
                'image_url' => 'required',
            ];
            $message = [
                'title.required' => 'Title is required',
                'image_url.required' => 'Image is required',
            ];

        $validator = Validator::make($input, $rules, $message);

        if ($validator->fails()) {
            return response()->json([
                'error' => $validator->errors()
            ], 422);
        } else {

            // create a Book object
            $book = new Book;
            $book->title = $request->title;
            $book->image_url = $request->image_url;
            $book->published_date = $request->published_date;
            $book->purchased = 0;
            $book->special_offer = $request->special_offer;

            $book->save();
        }

            DB::commit();
            $response = [
                'success' => true,
                'message' => 'Book successfully created!!',
                'data' => $book,
            ];
            return response()->json($response, 200);
            
        } catch (\Exception $ex) {
            DB::rollback();
            return response()->json(
                [
                    'success'=> false,
                    'error' => $ex->getMessage(),
                    'message' => 'Booking not created',
                ],
                 500);
            
            
        }
    }

    public function editBook($id)
    {
        // get the a specified book according to their id
        $book = Book::where('id', $id)->first();
            if ($book !== null) {

            
            $response = [
                'success' => true,
                'message' => 'Book successfully found!!',
                'data' => $book,
            ];
            return response()->json($response, 200);
        } else {

            return response()->json(
                [
                    'success'=> false,
                    'message' => 'Book not found',
                ],
                     500);
            }
    }

    /**
     * Update a Specific book's record
     */
    public function updateBook(Request $request, $id)
    {
        // find the user
        $book = Book::find($id);
            if($book) {
            
            // update the user
            $book->title = $request->title;
            $book->image_url = $request->image_url;
            $book->published_date = $request->published_date;
            $book->purchased = $request->purchased;
            $book->special_offer = $request->special_offer;

            $updatedBook = $book->update();
            $getUpdatedBook = Book::find($id);
            $response = [
                'success' => true,
                'message' => 'Book successfully updated!!',
                'data' => $getUpdatedBook,
            ];
            return response()->json($response, 200);
            } else {
                return response()->json(
                    [
                        'success'=> false,
                        'message' => 'Book not updated',
                    ],
                    200);
                }
    }

    /**
     * delete a specific user
     */
    public function deleteBook($id)
    {
        $book = Book::find($id);
            // if user was found
            if($book) {
                $book->delete();
                $response = [
                    'success' => true,
                    'message' => 'Book successfully deleted!!',
                ];
            return response()->json($response, 200);
        } else {
            return response()->json(
                [
                    'success'=> false,
                    'message' => 'Book not found',
                ],
                 500);
            }
    }

}
