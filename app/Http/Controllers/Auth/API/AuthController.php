<?php

namespace App\Http\Controllers\Auth\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;
use Validator;
use App\User;

class AuthController extends Controller
{
    /**
     * Create user via API
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function register(Request $request)
    {
        // get all form input
        $input = $request->all();

        // create rules to make sure all rules are satisfied
        $rules = [
            'name' => 'required|string',
            'email' => 'required|string|email|unique:users',
            'password' => 'required|string|confirmed',
            'username' => 'required|unique:users',
        ];
        $message = [
            'name.required' => 'Name is required',
            'email.required' => 'Email is required',
            'password.required' => 'Password is required',
        ];

        $validator = Validator::make($input, $rules, $message);

        try{
            if ($validator->fails()) {
                return response()->json([
                    'error' => $validator->errors()
                ], 422);
            } else {
                $user = new User([
                    'name' => $request->name,
                    'last_name' => $request->last_name,
                    'username' => $request->username,
                    'email' => $request->email,
                    'phone' => $request->phone,
                    'password' => Hash::make($request->password),
                ]);
                $user->save();
                return response()->json([
                    'message' => 'Successfully created user!'
                ], 201);
            }
        } catch (\Exception $ex) {
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
     * Handles Login Request via API
     *
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        $credentials = [
            'username' => $request->username,
            'password' => $request->password
        ];

        
        try{
            if (auth()->attempt($credentials)) {
                $token = auth()->user()->createToken('activelearning')->accessToken;
                $user = auth()->user();
                return response()->json(['token' => $token, 'user' => $user], 200);
            } else {
                return response()->json(['error' => 'UnAuthorised'], 401);
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
