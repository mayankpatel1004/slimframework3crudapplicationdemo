<?php

use Slim\Http\Request;
use Slim\Http\Response;

// Routes

$app->get('/[{name}]', function (Request $request, Response $response, array $args) {
    // Sample log message
    $this->logger->info("Slim-Skeleton '/' route");

    // Render index view
    return $this->renderer->render($response, 'index.phtml', $args);
});

$app->get("/books/", function (Request $request, Response $response) {
    $sql = "SELECT * FROM books";
    $stmt = $this->db->prepare($sql);
    $stmt->execute();
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

$app->get("/books/{id}", function (Request $request, Response $response, $args) {
    $id = $args["id"];
    $sql = "SELECT * FROM books WHERE book_id=:id";
    $stmt = $this->db->prepare($sql);
    $stmt->execute([":id" => $id]);
    $result = $stmt->fetch();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

$app->get("/books/search/", function (Request $request, Response $response, $args) {
    $keyword = $request->getQueryParam("keyword");
    $sql = "SELECT * FROM books WHERE title LIKE '%$keyword%' OR description LIKE '%$keyword%' OR author LIKE '%$keyword%'";
    $stmt = $this->db->prepare($sql);
    $stmt->execute([":id" => $id]);
    $result = $stmt->fetchAll();
    return $response->withJson(["status" => "success", "data" => $result], 200);
});

$app->post("/books/", function (Request $request, Response $response) {
    $new_book = $request->getParsedBody();
    $sql = "INSERT INTO books (title, author, description) VALUE (:title, :author, :description)";
    $stmt = $this->db->prepare($sql);
    $data = [
        ":title" => $new_book["title"],
        ":author" => $new_book["author"],
        ":description" => $new_book["description"],
    ];
    if ($stmt->execute($data)) {
        return $response->withJson(["status" => "success", "data" => "1"], 200);
    }

    return $response->withJson(["status" => "failed", "data" => "0"], 200);
});

$app->put("/books/{id}", function (Request $request, Response $response, $args) {
    $id = $args["id"];
    $new_book = $request->getParsedBody();
    $sql = "UPDATE books SET title=:title, author=:author, description=:description WHERE book_id=:id";
    $stmt = $this->db->prepare($sql);
    $data = [
        ":id" => $id,
        ":title" => $new_book["title"],
        ":author" => $new_book["author"],
        ":description" => $new_book["description"],
    ];

    if ($stmt->execute($data)) {
        return $response->withJson(["status" => "success", "data" => "1"], 200);
    }

    return $response->withJson(["status" => "failed", "data" => "0"], 200);
});

$app->delete("/books/{id}", function (Request $request, Response $response, $args) {
    $id = $args["id"];
    $sql = "DELETE FROM books WHERE book_id=:id";
    $stmt = $this->db->prepare($sql);
    $data = [
        ":id" => $id,
    ];
    if ($stmt->execute($data)) {
        return $response->withJson(["status" => "success", "data" => "1"], 200);
    }
    return $response->withJson(["status" => "failed", "data" => "0"], 200);
});