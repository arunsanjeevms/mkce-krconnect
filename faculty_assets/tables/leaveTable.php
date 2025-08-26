<?php include '../db.php'; ?>

<table class="table table-bordered" id="leave-table" width="100%" cellspacing="0">
    <thead class="gradient-header">
        <tr>
            <th>S.No</th>
            <th>Type</th>
            <th>Date</th>
            <th>Reason</th>
            <th>Proof</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <?php
        $sql="SELECT * FROM absent WHERE status = 'Pending'";
        $result = mysqli_query($conn, $sql);
        $sno=1;
        while($row=mysqli_fetch_assoc($result)){
            echo "<tr>";
            echo "<td>".$sno++."</td>";
            echo "<td>".$row['type']."</td>";

            $formattedDate = date('d-m-Y', strtotime($row['date']));
            echo "<td>".$formattedDate."</td>";
            
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

                <button  class='btn btn-success btn-sm approve_leave' data-id='".$row['sno']."' >
                    <i class='fa-solid fa-check'></i> Approve
                </button>

                <button type='button' data-bs-toggle='modal' data-bs-target='#leaveRejectModal' class='btn btn-danger btn-sm reject_leave' data-id='".$row['sno']."' >
                    <i class='fa-solid fa-xmark'></i> Reject
                </button>
            </td>";

            
            echo "</tr>";
        }
        ?>
    </tbody>
</table>