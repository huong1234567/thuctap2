<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css">
<link href="manager_empl.css" rel="stylesheet" type="text/css">
<header>
    <h1>DANH SÁCH NHÂN VIÊN</h1>
</header>
<section>
    <div id="search-container">
        <input type="text" id="search-input" placeholder="Tìm kiếm...">
        <button id="search-button" onclick="searchEmployees()">Search</button>
    </div>
    <table>
        <tr>
            <th>Fullname</th>
            <th>Customers</th>
            <th>Directors</th>
            <th>Staffs</th>
        </tr>

        <tr>
            <td>Đinh Thanh Hải</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Nguyễn Văn Hạnh</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Huỳnh Văn Huy</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Trần Đắc Quang</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Trần Quang Nhiên</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Lê Văn Hùng</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Võ Văn Huy Hoàng</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Nguyễn Văn Phúc</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Trần Quốc Tuấn</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
        <tr>
            <td>Võ Văn Hiếu</td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
            <td><input type="checkbox" checked></td>
        </tr>
    </table>
    <div class="pagination">
        <a href="#" class="prev">&laquo; Previous</a>
        <a href="#" class="active">1</a>
        <a href="#">2</a>
        <a href="#">3</a>
        <a href="#">Next &raquo;</a>
    </div>
</section>
<script>
    function searchEmployees() {
        // Get the input value
        var searchInput = document.getElementById('search-input').value.toLowerCase();

        // Get all rows in the table
        var rows = document.querySelectorAll('table tr');

        // Loop through each row
        for (var i = 1; i < rows.length; i++) {
            // Get the fullname cell content in lowercase
            var fullname = rows[i].querySelector('td:first-child').textContent.toLowerCase();

            // Check if the search input matches the fullname
            if (fullname.includes(searchInput)) {
                // Show the row if it matches
                rows[i].style.display = '';
            } else {
                // Hide the row if it doesn't match
                rows[i].style.display = 'none';
            }
        }
    }
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
<script src="https://unpkg.com/bootstrap-icons@1.18.0/font/bootstrap-icons.css"></script>
