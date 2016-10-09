<?php

use Illuminate\Database\Seeder;


class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new \App\Product([
            'imagePath'     =>      'http://orig00.deviantart.net/e828/f/2013/183/f/8/mugiwara_luffy_by_bubblemaster7-d6bop97.jp',
            'title'         =>      'Monky D.Luffy',
            'describtion'   =>      'Monky D.Luffy is a Pirats King Monky D.Luffy is a Pirats King',
            'price'         =>      500
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath'     =>      'http://static.comicvine.com/uploads/original/11117/111178645/4778120-zoro.jpg',
            'title'         =>      'Zoro',
            'describtion'   =>      'Zoro is a Pirats King Sourder Zoro D.Luffy is a Pirats King Sourder',
            'price'         =>      300
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath'     =>      'http://noicheamiamoonepiece.altervista.org/blog/wp-content/uploads/2015/11/sanji_kun__by_mirimmd-d4qfcgl.jpg',
            'title'         =>      'Sanjy',
            'describtion'   =>      'Sanjy is a Pirats King Cooker Sanjy is a Pirats King Cooker',
            'price'         =>      200
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath'     =>      'https://i.ytimg.com/vi/BEei99o6eJo/maxresdefault.jpg',
            'title'         =>      'Franky',
            'describtion'   =>      'Franky is a Pirats King Shipper Franky is a Pirats King Shipper',
            'price'         =>      180
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath'     =>      'https://i.ytimg.com/vi/_bNIIz-mG9E/maxresdefault.jpg',
            'title'         =>      'Chopper',
            'describtion'   =>      'Chopper is a Pirats King Doctor Chopper is a Pirats King Doctor',
            'price'         =>      10
        ]);
        $product->save();

        $product = new \App\Product([
            'imagePath'     =>      'https://i.ytimg.com/vi/sfYNUy7x5xE/maxresdefault.jpg',
            'title'         =>      'Nami',
            'describtion'   =>      'Nami is a Pirats King Seere Nami is a Pirats King Seere',
            'price'         =>      100
        ]);
        $product->save();
    }
}
