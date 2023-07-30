<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CandidateEducation extends Model
{
    use HasFactory;

    public $timestamps = false;
    protected $fillable = [
        'candidate_id', 'institute', 'start_year', 'passing_year', 'degree',
    ];

    protected $primaryKey = 'id';
    protected $table = 'candidate_education';

    public function profile(){
        return $this->hasOne(Profile::class,'id','candidate_id');
    }
}
