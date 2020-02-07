<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Book;

class BookController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $books = Book::where('purchased', 0)->orderBy('published_date')->get();

        if ($books !== null) { 
            $response = [
                'success' => true,
                'message' => 'All available Books!!',
                'data' => $books,
            ];
            return response()->json($response, 200);
        } else {
            return response()->json(
                [
                    'success'=> false,
                    'message' => 'No Book was found',
                ],
                     200);
            }
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function special_offers()
    {
        $special_books = Book::where('special_offer', 1)->orderBy('published_date')->get();

        if ($special_books !== null) { 
            $response = [
                'success' => true,
                'message' => 'Special Offer Books!!',
                'data' => $special_books,
            ];
            return response()->json($response, 200);
        } else {
            return response()->json(
                [
                    'success'=> false,
                    'message' => 'No Special Book was found',
                ],
                     200);
            }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
