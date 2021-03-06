<div class="container-fluid">
    <nav class="navbar navbar-expand my-3">
        <a class="btn btn-sm btn-outline-warning mr-2" href="<?= site_url('signer/index')?>">Pending</a>
        <a class="btn btn-sm <?php if($status=='rejected'){echo 'btn-secondary';};?> mr-2" href="<?= site_url('signer/rejected')?>">Rejected</a>
        <a class="btn btn-sm btn-outline-success mr-2" href="<?= site_url('signer/approved')?>">Approved</a>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav mr-auto">
            </ul>
            <div class="form-inline">
                <form method="post">
                    <!-- <input type="text" class="form-control form-control-sm" name="" placeholder="keyword-2"> -->
                    <input type="text" class="form-control form-control-sm" name="searchKeyword" placeholder="Tanggal" value="<?php echo $searchKeyword; ?>" id="datepicker">
                    <button type="submit" class="btn btn-primary fas fa-search" name="submitSearch" value="Search" ></button>
                    <button type="submit" class="btn btn-secondary fas fa-redo" name="submitSearchReset" value="Search" ></button>
                </form>
            </div>
        </div>
    </nav>
    <hr class="my-0">
    <nav class="navbar navbar-expand">
        <ul class="nav navbar-nav mr-auto">
        </ul>
        <form class="form-inline">
            <input class="form-control form-control-sm" type="search " placeholder="Search ..." id="myInput">
        </form>
    </nav>
        <!-- Data list table --> 
        <table class="table table-sm table-striped text-center" style="font-size:14px">
        <thead class="text-dark" style="background-color:#deddfa">
            <tr>
                <th>Tanggal</th>
                <th>Merek</th>
                <th>Implementator</th>
                <th>Keterangan</th>
                <th>Maker</th>
                <th>Checker</th>
                <th>Signer</th>
            </tr>
        </thead> 
        <tbody id="myTable">
            <?php if(!empty($signer)){ foreach($signer as $row){ ?>
            <tr>
                <td style="vertical-align: middle;"><?php echo $row['date']; ?></td>
                <td style="vertical-align: middle;"><?php echo $row['merek']; ?></td>
                <td style="vertical-align: middle;"><?php echo "<div class='row'><div class='col text-right'>BRI IT</div><div class='col text-left'>: ".$row['briit']."</div></div>"; echo "<div class='row'><div class='col text-right'>Visionet</div><div class='col text-left'>: ".$row['visionet']."</div></div>"; echo "<div class='row'><div class='col text-right'>Indopay</div><div class='col text-left'>: ".$row['indopay']."</div></div>";?></td>
                <td style="vertical-align: middle;"><?php echo $row['keterangan']; ?></td>
                <td style="vertical-align: middle;"><?php echo $row['maker']; ?></td>
                <td style="vertical-align: middle;"><?php echo $row['checker']; echo "<br>".$row['date2'];?></td>
                <td style="vertical-align: middle;">
                    <?php if(($row['signer']=='') || ($row['status2']==1 && $row['status3']==0)){ ?>
                        <div class="dropdown">
                            <button class="btn dropdown-toggle btn-sm" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                PENDING
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                <a class="dropdown-item" href="<?php $key = 1; echo site_url('signer/follup_signer/'.$row['id'].'/'.$key);?>">Approve</a>
                                <a class="dropdown-item" href="<?php $key = 0; echo site_url('signer/follup_signer/'.$row['id'].'/'.$key);?>">Reject</a>
                            </div>
                        </div>
                    <?php
                    }else{
                        if($row['status3'] == 0){
                                echo "<div class='text-secondary font-weight-bold'>REJECTED</div>";
                        }elseif($row['status3'] == 1){
                            echo "<div class='text-success font-weight-bold'>APPROVED</div>";
                        }
                        echo $row['date3'];
                    }?>
                </td>
            </tr>
            <?php } }else{ ?>
            <tr class="text-center"><td colspan="8">Data tidak ditemukan</td></tr>
            <?php } ?>
        </tbody>
    </table>
    
        <!-- Display pagination links -->
    <div class="row">
        <div class="col">
        <?php echo $this->pagination->create_links(); ?>
        </div>
    </div>
</div>