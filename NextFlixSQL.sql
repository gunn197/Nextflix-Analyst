-- Truy vấn 1: Đếm số lượng bộ phim và chương trình truyền hình trên Netflix
SELECT 
    type,
    COUNT(*) AS count
FROM 
    netflix_data
GROUP BY 
    type;

-- Truy vấn 2: Tìm 10 quốc gia có số lượng nhiều nhất các bộ phim và chương trình truyền hình trên Netflix
SELECT 
    country,
    COUNT(*) AS count
FROM 
    netflix_data
GROUP BY 
    country
ORDER BY 
    count DESC
LIMIT 10;

-- Truy vấn 3: Tìm 10 đạo diễn phổ biến nhất trên Netflix
SELECT 
    director,
    COUNT(*) AS count
FROM 
    netflix_data
GROUP BY 
    director
ORDER BY 
    count DESC
LIMIT 10;

-- Truy vấn 4: Tính trung bình độ dài của các bộ phim và chương trình truyền hình trên Netflix
SELECT 
    type,
    AVG(duration) AS average_duration
FROM 
    netflix_data
GROUP BY 
    type;

-- Truy vấn 5: Tính số lượng bộ phim và chương trình truyền hình được thêm vào Netflix theo từng năm
SELECT 
    release_year,
    type,
    COUNT(*) AS count
FROM 
    netflix_data
GROUP BY 
    release_year, type
ORDER BY 
    release_year;
