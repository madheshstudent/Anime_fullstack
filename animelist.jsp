<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anime List</title>
    <style>
        /* Existing CSS */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-image: url('j5.png');
            background-size: cover;
        }

        .open-btn {
            font-size: 30px;
            cursor: pointer;
            background-color: #333;
            color: white;
            padding: 10px 15px;
            border: none;
        }

        .search-bar {
            position: relative;
            display: flex;
            align-items: center;
        }

        .search-bar input[type="text"] {
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width: 200px;
        }

        .search-bar button {
            background-color: #333;
            color: white;
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 5px;
        }

        .sidebar {
            height: 100vh;
            width: 250px;
            background-color: #333;
            padding-top: 20px;
            position: fixed;
            top: 0;
            left: 0;
            overflow-y: auto;
            z-index: 2;
            transition: 0.3s;
        }

        .sidebar a {
            display: block;
            color: #f2f2f2;
            padding: 14px 16px;
            text-decoration: none;
        }

        .sidebar a:hover {
            background-color: #ddd;
            color: black;
        }

        .sidebar .filter-section {
            margin-top: 20px;
            padding: 0 16px;
            color: white;
        }

        .sidebar .filter-section h3 {
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
        }

        .sidebar .filter-section label {
            display: block;
            margin-bottom: 5px;
        }

        .sidebar .filter-section select {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 10px;
        }

        .sidebar .alphabetical-index {
            margin-top: 20px;
            padding: 0 16px;
            color: white;
        }

        .sidebar .alphabetical-index h3 {
            margin-bottom: 10px;
            font-size: 18px;
            font-weight: bold;
        }

        .sidebar .alphabetical-index a {
            display: inline-block;
            margin-right: 10px;
            color: #f2f2f2;
            text-decoration: none;
        }

        .sidebar .alphabetical-index a:hover {
            text-decoration: underline;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
            margin-top: 60px; /* Adjust this based on the height of your header */
        }

        .anime-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
        }

        .anime-item {
            background-size: cover;
            background-position: center;
            border-radius: 8px;
            overflow: hidden;
            position: relative;
            height: 250px; /* Adjust as needed */
            display: flex;
            align-items: flex-end;
            text-align: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            color: white;
        }

        .anime-item::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5); /* Grey overlay */
            z-index: 1;
        }

        .anime-item h3 {
            z-index: 2;
            background-color: rgba(0, 0, 0, 0.7);
            padding: 10px;
            width: 100%;
            margin: 0;
        }

        .pagination {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            list-style: none;
            padding: 0;
        }

        .pagination li {
            margin: 0 5px;
        }

        .pagination a {
            display: block;
            padding: 8px 12px;
            background-color: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .pagination a:hover {
            background-color: #ddd;
            color: black;
        }

        .pagination .active a {
            background-color: #666;
            cursor: default;
        }
    </style>
</head>
<body>

    <div class="header">
        <button class="open-btn" onclick="toggleSidebar()">&#9776;</button>
        <div class="search-bar">
            <input type="text" placeholder="Search Anime...">
            <button type="button">Search</button>
        </div>
        
    </div>

    <div class="sidebar" id="sidebar">
        <a href="Home.jsp">Home</a>
        <a href="animelist.jsp">Anime List</a>
        <a href="popular_anime.jsp">Popular</a>
        <a href="Movies_page.jsp">Movies</a>
        <a href="newseason.jsp">New Season</a>
        <button class="close-btn" onclick="toggleSidebar()">close</button>

        <!-- Genre and Season Filters -->
        <div class="filter-section">
            <h3>Filter by</h3>
            <label for="genre">Genre:</label>
            <select id="genre">
                <option value="all">All</option>
                <option value="action">Action</option>
                <option value="comedy">Comedy</option>
                <option value="drama">Drama</option>
                <option value="fantasy">Fantasy</option>
                <option value="horror">Horror</option>
                <option value="romance">Romance</option>
                <option value="sci-fi">Sci-Fi</option>
                <!-- Add more genres as needed -->
            </select>

            <label for="season">Season:</label>
            <select id="season">
                <option value="all">All</option>
                <option value="spring">Spring</option>
                <option value="summer">Summer</option>
                <option value="fall">Fall</option>
                <option value="winter">Winter</option>
                <!-- Add more seasons if needed -->
            </select><br>
            <button>submit</button>
        </div>
    </div>

    <div class="content" id="content">
        <h1>Anime List</h1>

        <!-- Anime List -->
        <div class="anime-list">
            <!-- Example Anime Items -->
            <div class="anime-item" style="background-image: url('https://gogocdn.net/images/anime/Shingeki-no-Kyojin.jpg');">
                <h3>Shingeki-no-Kyojin</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/shingeki-no-kyojin-season-2.png');">
                <h3>Shingeki-no-kyojin-season-2</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/shingeki-no-kyojin-the-final-season-part-2.png');">
                <h3>Anime Name 3</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/jujutsu-kaisen-0.png');">
                <h3>Jujutsu-kaisen-0</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/naruto-dub.png');">
                <h3>Naruto</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/images/anime/naruto_shippuden.jpg');">
                <h3>Naruto_shippuden</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/images/anime/B/bleach.jpg');">
                <h3>Bleach</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/bleach-sennen-kessen-hen-ketsubetsu-tan-1688151974.png');">
                <h3>Bleach: Sennen Kessen-hen - Ketsubetsu-tan</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/kimi-no-na-wa.jpg);">
                <h3>Kimi no Na wa</h3>


            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/tenki-no-ko.png);">
                <h3>Tenki no Ko</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/tokyo-revengers.png);">
                <h3>Tokyo-revengers</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/one-piece-1708412053.png);">
                <h3>One Piece</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/mashle-1680202211.png);">
                <h3>Mashle</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/koe-no-katachi-movie.png);">
                <h3>Koe no Katachi</h3>

            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/chainsaw-man-1664388043.png);">
                <h3>chainsaw-man</h3>
    
        </div>

        <!-- Pagination -->
        <ul class="pagination">
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">Next</a></li>
        </ul>
    </div>

    <script>
        function toggleSidebar() {
            var sidebar = document.getElementById("sidebar");
            sidebar.classList.toggle("open");
        }
    </script>
</body>
</html>