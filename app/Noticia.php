<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Noticia extends Model
{
	protected	$fillable =['titulo','cuerpo','importan', 'group_id'];
    
    public function IsImportant()
    {
    	return $this->importan =='1';
    }
    
    public function scopeUltimasNoticias($query)
    {
    	return $query->latest()->limit(9)->get();
    }
    public function scopebelongsToGroup($query, $group)
    {
        return $query->where('group_id', $group->id)->get();
    }
    public function group()
    {
    	return $this->belongsTo(Group::class)->withDefault();
    }
    
}
