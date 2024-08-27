<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #717171be;
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
            width: 0;
            background-color: #333;
            padding-top: 20px;
            position: fixed;
            top: 0;
            left: 0;
            overflow-x: hidden;
            transition: 0.3s;
            z-index: 2;
        }

        .sidebar a {
            display: block;
            color: #f2f2f2;
            padding: 14px 16px;
            text-decoration: none;
            opacity: 0;
            transition: opacity 0.3s;
        }

        .sidebar a:hover {
            background-color: #ddd;
            color: black;
        }

        .sidebar.open {
            width: 250px;
        }

        .sidebar.open a {
            opacity: 1;
        }

        .content {
            margin-left: 0;
            padding: 20px;
            transition: margin-left 0.3s;
            margin-top: 60px; /* Adjust this based on the height of your header */
        }

        .anime-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            gap: 20px;
            margin-top: 20px;
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
        <a href="newseason.jsp">New Season</a>
        <a href="Movies_page.jsp">Movies</a>
        <a href="popular_anime.jsp">Popular</a>
        <button class="close-btn" onclick="toggleSidebar()">close</button>
    </div>

    <div class="content" id="content">
        <h1>Anime Movies</h1>
        
        <div class="anime-grid">
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/bloody-escape-jigoku-no-tousou-geki.png');">
                <h3>Bloody escape jigoku no tousou geki</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/kidou-senshi-gundam-seed-freedom-1718073134.png');">
                <h3>Kidou senshi gundam seed freedom</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/doraemon-movie-43-nobita-no-chikyuu-koukyougaku.png');">
                <h3>Doraemon movie:nobita no chikyuu koukyougaku</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/spy-x-family-movie-code-white-1722519917.png');">
                <h3>Spy x family movie code white</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/black-clover-mahou-tei-no-ken-1679974385.png');">
                <h3>Blackclover mahou tei no ken</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/alice-to-therese-no-maboroshi-koujou-1692067047.png');">
                <h3>Alice to therese no maboroshi koujou</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/yaneura-no-rudger-1718100863.png');">
                <h3>Yaneura no rudger</h3>
            </div>
            <div class="anime-item" style="background-image: url('https://gogocdn.net/cover/02-1717289197.png');">
                <h3>Digimon Adventure 02: The Beginning</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/kimi-no-na-wa.jpg);">
                <h3>Kimi no Na wa</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/tenki-no-ko.png);">
                <h3>Tenki no Ko</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/ai-no-utagoe-wo-kikasete.png);">
                <h3>Ai no Utagoe wo Kikasete</h3>
            </div>
            <div class="anime-item" style="background-image: url(https://gogocdn.net/cover/one-piece-1708412053.png);">
                <h3>One Piece</h3>
            </div>

            <!-- Add more anime items as needed -->
        </div>
    </div>

    <script>
        function toggleSidebar() {
            const sidebar = document.getElementById("sidebar");
            const content = document.getElementById("content");
            if (sidebar.classList.contains("open")) {
                sidebar.classList.remove("open");
                content.style.marginLeft = "0";
            } else {
                sidebar.classList.add("open");
                content.style.marginLeft = "250px";
            }
        }
    </script>
</body>
</html>