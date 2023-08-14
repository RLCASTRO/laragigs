<?php

namespace App\Models;

class Listing {
    public static function all() {
        return [
            [
                'id' => 1,
                'title' => 'Listing One',
                'description' => 'Commodo in incididunt fugiat ea qui quis cupidatat exercitation duis duis dolor pariatur eiusmod. Consectetur cupidatat ut consectetur eiusmod ex irure adipisicing. Esse excepteur proident culpa amet adipisicing minim non sunt adipisicing excepteur. Id exercitation sit mollit nulla. Do excepteur deserunt ad eu cillum cillum nulla dolore adipisicing. Elit aliqua sit non labore quis nulla minim excepteur deserunt. Aliquip laboris sunt Lorem excepteur sint duis minim veniam sit aute velit ipsum.'
            ],
            [
                'id' => 2,
                'title' => 'Listing Two',
                'description' => 'Commodo in incididunt fugiat ea qui quis cupidatat exercitation duis duis dolor pariatur eiusmod. Consectetur cupidatat ut consectetur eiusmod ex irure adipisicing. Esse excepteur proident culpa amet adipisicing minim non sunt adipisicing excepteur. Id exercitation sit mollit nulla. Do excepteur deserunt ad eu cillum cillum nulla dolore adipisicing. Elit aliqua sit non labore quis nulla minim excepteur deserunt. Aliquip laboris sunt Lorem excepteur sint duis minim veniam sit aute velit ipsum.'
            ],
            [
                'id' => 3,
                'title' => 'Listing Three',
                'description' => 'Commodo in incididunt fugiat ea qui quis cupidatat exercitation duis duis dolor pariatur eiusmod. Consectetur cupidatat ut consectetur eiusmod ex irure adipisicing. Esse excepteur proident culpa amet adipisicing minim non sunt adipisicing excepteur. Id exercitation sit mollit nulla. Do excepteur deserunt ad eu cillum cillum nulla dolore adipisicing. Elit aliqua sit non labore quis nulla minim excepteur deserunt. Aliquip laboris sunt Lorem excepteur sint duis minim veniam sit aute velit ipsum.'
            ],
        ];
    }

    public static function find($id) {
        $listings = self::all();
        foreach ($listings as $listing) {
            if ($listing['id'] == $id) {
                return $listing;
            }
        }
    }
}