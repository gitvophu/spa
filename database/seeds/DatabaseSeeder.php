<?php

use App\Post;
use Faker\Factory;
use App\Models\Product;
use App\Models\Category;
use Illuminate\Database\Seeder;
class DatabaseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //nation
        $faker = Faker\Factory::create();

        for ($i = 0; $i < 10; $i++) {
            App\Models\Post::create([
                'title' => $faker->sentence(),
                'image' =>'assets/img/full-width/fullwidth01.jpg',
                'content' => $faker->paragraph(5),
            ]);
        }
        for ($i = 0; $i < 10; $i++) {
            App\Models\Product::create([
                'name' => $faker->sentence(),
                'price' =>$faker->numberBetween( 10, 1000),
                'image' =>'assets/img/full-width/fullwidth01.jpg',
                'description' => $faker->paragraph(5),
                
            ]);
        }
        
    }
}
