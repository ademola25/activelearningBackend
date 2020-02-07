<?php

namespace App\Http\Middleware;

use Closure;

class AdminMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $message = 'You are not an admin';
        if(auth()->user()->user_role == 1) {

            return $next($request);
        }
        return response()->json([
            'message' => $message
        ]);
    }
}
