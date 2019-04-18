<?php


use Faker\Factory;
use App\Models\Post;
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

        //
        foreach (range(1,100) as $index) {
            DB::table('posts')->insert([
                'title' => $faker->sentence(),
                'image' =>'fullwidth01.jpg',
                'content' => $faker->paragraph(5),
                'updated_at' => $faker->dateTimeBetween(),
                'created_at' => $faker->dateTimeBetween(),
               
            ]);
        }
        foreach (range(1,100) as $index) {
            DB::table('products')->insert([
                'name' => $faker->sentence(),
                'price' =>$faker->numberBetween( 10, 1000),
                'image' =>'fullwidth01.jpg',
                'description' => $faker->paragraph(5),       
                'updated_at' => $faker->dateTimeBetween(),
                'created_at' => $faker->dateTimeBetween(),            
            ]);
        }
        foreach (range(1,5) as $index) {
            DB::table('banners')->insert([
                'image' =>'slider03.jpg',
                'title' => $faker->sentence(),
                'description' => $faker->paragraph(5),      
                'updated_at' => $faker->dateTimeBetween(),
                'created_at' => $faker->dateTimeBetween(),          
            ]);
        }
        foreach (range(1,100) as $index) {
            DB::table('messages')->insert([
                'name' =>$faker->name(),
                'phone' => $faker->phoneNumber,             
                'email' => $faker->paragraph,
                'message' => $faker->paragraph(5),
                'updated_at' => $faker->dateTimeBetween(),
                'created_at' => $faker->dateTimeBetween(),   
            ]);
        }

        foreach (range(1,100) as $index) {
            DB::table('comments')->insert([                                                  
                'name' =>$faker->name(),
                'description' => $faker->paragraph(5),             
                'type' => $faker->numberBetween(1,2),
                'status' => $faker->numberBetween(0,1),
                'product_id' => Product::get()->random(1)->first()->id,                
                'post_id' => Post::get()->random(1)->first()->id,  
                'updated_at' => $faker->dateTimeBetween(),
                'created_at' => $faker->dateTimeBetween(),
            ]);
        }

        DB::table('users')->insert([
                'email' => 'admin@gmail.com',
                'password' => bcrypt('123456'),
                'updated_at' => $faker->dateTimeBetween(),
                'created_at' => $faker->dateTimeBetween(),              
            ]);
    }
}