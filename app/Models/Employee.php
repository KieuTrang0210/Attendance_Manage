<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use App\Models\Attendance;
use App\Models\LeaveRequest;

class Employee extends Model
{
    use HasFactory;

    public $timestamps = false;

    protected $fillable = [
        'name',
        'email',
        'position'
    ];

    public function attendances(){
        return $this->hasMany(Attendance::class);
    }

    public function leaverequests(){
        return $this->hasMany(LeaveRequest::class);
    }

}
