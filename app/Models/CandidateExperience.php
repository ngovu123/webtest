<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CandidateExperience extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $fillable = [
        'candidate_id', 'company', 'start_date', 'end_date', 'job_position', 'job_details',
    ];

    protected $primaryKey = 'id';
    protected $table = 'candidate_experiences';

    public function profile()
    {
        return $this->belongsTo(Profile::class, 'id', 'candidate_id');
    }
}
