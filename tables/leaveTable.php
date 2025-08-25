<?php include '../db.php'; ?>

<table class="table table-bordered" id="leave-table" width="100%" cellspacing="0">
    <thead class="gradient-header">
        <tr>
            <th>S.No</th>
            <th>Type</th>
            <th>Date</th>
            <th>Reason</th>
            <th>Proof</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sql="SELECT * FROM absent";
        $result = mysqli_query($conn, $sql);
        $sno=1;
        while($row=mysqli_fetch_assoc($result)){
            echo "<tr>";
            echo "<td>".$sno++."</td>";
            echo "<td>".$row['type']."</td>";
            echo "<td>".$row['date']."</td>";
            echo "<td>".$row['reason']."</td>";


            if (!empty($row['proof'])) {
                echo "<td class='text-center align-middle'>
                    <button type='button' class='btn btn-info btn-sm view-proof' 
                        data-proof='".$row['proof']."' 
                        data-bs-toggle='modal' 
                        data-bs-target='#viewProofModal'>
                        <i class='fa-solid fa-eye'></i> View Proof
                    </button>
                </td>";
            } else {
                echo "<td class='text-center align-middle text-muted'>No Proof Uploaded </td>";
            }

            
            echo "<td class='text-center align-middle'>
                <button class='btn btn-warning btn-sm edit_leave' 
                    data-id='".$row['sno']."'
                    data-type='".$row['type']."'
                    data-date='".$row['date']."'
                    data-reason='".$row['reason']."'>
                    <i class='fa-solid fa-pencil'></i> Edit
                </button>
                <button class='btn btn-danger btn-sm del_leave' data-id='".$row['sno']."' >
                    <i class='fa-solid fa-trash'></i> Delete
                </button>
            </td>";
            echo "</tr>";
        }
        ?>
    </tbody>
</table>
