<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Employee;

class LeaveRequest extends Model
{
    use HasFactory;
    public $timestamps = false;

    protected $fillable = [
        'employee_id',
        'start_date',
        'end_date',
        'status'
    ];

    public function employee(){
        return $this->belongsTo(Employee::class);
    }


}
