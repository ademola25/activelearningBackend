<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Book;
use App\User;

class OrderController extends Controller
{
    /**
     * This method allows a user to buy a book
     */
    public function buyUserBook(Request $request)
    {
        // get the logged in user id
        $userId = auth()->user()->id;
        // get the book_id from request
        $book_id = $request->book_id;
        
        // get the user details using the user id
        $user = User::find($userId);
        // get the book from db
        $book = Book::find($book_id);
        // set the purchased column of this book to 1
        $book->purchased = 1;
        // store many-many relationship onto the db
        $synced = $user->books()->sync($book_id, false);

        try{
            if ($synced) {
                return response()->json([

                    'success'=> true,
                    'message' => 'Book successfully assigned to customer',
                    'book' => $book
                
                ], 200);
            } else {
                return response()->json([
                    'success'=> true,
                    'message' => 'Book could not be assigned to customer',
                    'book' => $book
            ], 201);
            }
        }
        catch (\Exception $ex) {
            return response()->json(
                [
                    'success'=> false,
                    'error' => $ex->getMessage(),
                    'message' => 'There was an error',
                ],
                 500);
            
            
        }
    }

    /**
     * This method allows a user to be able get a list of their orders
     */
    public function getUserPurchasedBooks()
    {
        // get the logged in user id
        $userId = auth()->user()->id;
        // get the user details using the user id
        $user = User::find($userId);

        $listBooks = collect([]);
        foreach ($user->books()->get() as $key => $userBook) {
            $listBooks->push($userBook);
        }

        try{
            if ($listBooks) {
                return response()->json([

                    'success'=> true,
                    'message' => 'Book successfully fetched',
                    'book' => $listBooks
                
                ], 200);
            } else {
                return response()->json([
                    'success'=> true,
                    'message' => 'Book could not be fetched',
            ], 201);
            }
        }
        catch (\Exception $ex) {
            return response()->json(
                [
                    'success'=> false,
                    'error' => $ex->getMessage(),
                    'message' => 'There was an error',
                ],
                 500);      
        }

    }

    public function deleteUserPurchasedBook(Request $request)
    {
        // get the logged in user id
        $userId = auth()->user()->id;
        // get the book_id from request
        $book_id = $request->book_id;
        
        // get the user details using the user id
        $user = User::find($userId);
        // get the book from db
        $book = Book::find($book_id);
        // set the purchased column of this book to 1
        $book->purchased = 1;
        // store many-many relationship onto the db
        $synced = $user->books()->sync($book_id, false);

        try{
            if ($synced) {
                return response()->json([

                    'success'=> true,
                    'message' => 'Book successfully assigned to customer',
                    'book' => $book
                
                ], 200);
            } else {
                return response()->json([
                    'success'=> true,
                    'message' => 'Book could not be assigned to customer',
                    'book' => $book
            ], 201);
            }
        }
        catch (\Exception $ex) {
            return response()->json(
                [
                    'success'=> false,
                    'error' => $ex->getMessage(),
                    'message' => 'There was an error',
                ],
                 500);
            
            
        }
    }
    
}
