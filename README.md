# checkout-api

### Description
Api to show a restaurant list of products, to select products from the menu, and to create a order inserting credit card data.

### Executing the project:

Build the container images
```
$ docker-compose build
```

Start running the containers
```
$ docker-compose up -d
```

Install ruby gems
```
$ docker-compose run web bundle install
```

Create the database
```
$ docker-compose run web rake db:create
```

Execute database migration
```
$ docker-compose run web rake db:migrate
```

Migrate database for test env
```
$ docker-compose run web rake db:migrate RAILS_ENV=test
```

Executing tests
```
$ docker-compose run web rspec
```

The service will run on port 3000.

### Create order with payment:

#### Route: /orders

Método: Post

Parâmetros:

```
{
   {
        "payment": {
            "card_number": "4002 4002 4002 4003",
            "cvv": "748",
            "exp_year": "2027",
            "exp_month": "11",
            "holder_name": "victor_marra"
        },
        "order_items": [
            {
                "quantity": 2,
                "item_id": 1
            },
            {
                "quantity": 3,
                "item_id": 2
            }
        ]
    }
}
```

Success return example:

```
{
    "id": 44,
    "code": "e22631",
    "total_amount": 700,
    "payment": {
        "id": 42,
        "card_number": "4002 4002 4002 4003",
        "holder_name": "victor_marra",
        "cvv": "748",
        "exp_year": "2027",
        "exp_month": "11",
        "order_id": 44,
        "deleted_at": null,
        "created_at": "2021-03-14T12:47:17.209Z",
        "updated_at": "2021-03-14T12:47:17.209Z"
    },
    "order_items": [
        {
            "id": 51,
            "price": 200,
            "quantity": 2,
            "total_amount": 400,
            "order_id": 44,
            "deleted_at": null,
            "created_at": "2021-03-14T12:47:17.197Z",
            "updated_at": "2021-03-14T12:47:17.197Z",
            "item_id": 1
        },
        {
            "id": 52,
            "price": 100,
            "quantity": 3,
            "total_amount": 300,
            "order_id": 44,
            "deleted_at": null,
            "created_at": "2021-03-14T12:47:17.204Z",
            "updated_at": "2021-03-14T12:47:17.204Z",
            "item_id": 2
        }
    ]
}
```

### Show items categories:

#### Route: /categories

Método: Get

Parâmetros:

Success return example:

```
[
    {
        "id": 1,
        "name": "Bakery",
        "image_id": "f3fbf57b118fa9",
        "deleted_at": null,
        "created_at": "2021-03-10T21:22:31.134Z",
        "updated_at": "2021-03-10T21:22:31.134Z"
    },
    {
        "id": 2,
        "name": "Entrees",
        "image_id": "b271afbefdc554",
        "deleted_at": null,
        "created_at": "2021-03-10T21:22:31.146Z",
        "updated_at": "2021-03-10T21:22:31.146Z"
    },
    {
        "id": 3,
        "name": "Drinks",
        "image_id": "eba73b2361fae3",
        "deleted_at": null,
        "created_at": "2021-03-10T21:22:31.153Z",
        "updated_at": "2021-03-10T21:22:31.153Z"
    }
]
```


### Show items list from a category:

#### Route: /items

Método: Get

Parâmetros:

```
{
    "cagegory_id": 3,
}
```

Success return example:

```
[
    {
        "id": 9,
        "name": "Small Drink",
        "price": 75,
        "image_id": "70c2a6247e7b58",
        "category_id": 3,
        "deleted_at": null,
        "created_at": "2021-03-10T21:22:31.266Z",
        "updated_at": "2021-03-10T21:22:31.266Z"
    },
    {
        "id": 10,
        "name": "Medium Drink",
        "price": 15,
        "image_id": "dba0fc03da30ca",
        "category_id": 3,
        "deleted_at": null,
        "created_at": "2021-03-10T21:22:31.274Z",
        "updated_at": "2021-03-10T21:22:31.274Z"
    },
    {
        "id": 11,
        "name": "Large Drink",
        "price": 2,
        "image_id": "ffc9bf61e441cd",
        "category_id": 3,
        "deleted_at": null,
        "created_at": "2021-03-10T21:22:31.282Z",
        "updated_at": "2021-03-10T21:22:31.282Z"
    }
]
```