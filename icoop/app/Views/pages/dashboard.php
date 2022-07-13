<?=
$this->extend('layouts/master')
?>

<?= $this->section('title') ?>
  Dashboard
<?= $this->endSection() ?>

<?= $this->section('current_page') ?>
  Dashboard
<?= $this->endSection() ?>
<?= $this->section('page_crumb') ?>
  Dashboard
<?= $this->endSection() ?>


<?= $this->section('content') ?>
  <div class="row">
    <div class="col-12">
      <div class="card bg-blue p-5">
        <div class="d-flex justify-content-between">
          <div>
            <h4 class="">Welcome, <b>Administrator</b></h4>
            <p class="font-18 mb-0">Admin Panel</p>
          </div>
          <div class="d-flex flex-row">
            <div class="mr-5 text-center">
              <h3>1,234</h3>
              <p class="mb-0"><i class="icon-users mr-1"></i> Members</p>
            </div>
            <div class="mr-5 text-center">
              <h3>84</h3>
              <p class="mb-0"><i class="icon-bag mr-1"></i> Loans</p>
            </div>
            <div class="mr-5 text-center">
              <h3>34.7m</h3>
              <p class="mb-0"><i class="icon-bar-chart mr-1"></i> Balance</p>
            </div>
            <div class="text-center">
              <h3>3.2m</h3>
              <p class="mb-0"><i class="icon-calendar mr-1"></i> Monthly Contrib.</p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <!-- sale card start -->

    <div class="col-md-3">
      <div class="card" style="cursor: pointer" onclick="location.href='<?php echo base_url();?>/approve_application'">
        <div class="media p-4 mb-0">
          <img src="/assets/images/registration.png" class="mr-4" width="50" alt="">
          <div class="media-body">
            <h6 class="mt-0">Pending Registrations</h6>
            <p class="mb-0">View list of registrations that are pending</p>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="cursor: pointer" onclick="location.href='<?php echo base_url();?>/loan/approve'">
        <div class="media p-4 mb-0">
          <img src="/assets/images/loan.png" class="mr-4" width="50" alt="">
          <div class="media-body">
            <h6 class="mt-0">Loan Applications</h6>
            <p class="mb-0">View list of pending loan applications</p>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="cursor: pointer" onclick="location.href='<?php echo base_url();?>/approve_withdrawal'">
        <div class="media p-4 mb-0">
          <img src="/assets/images/atm.png" class="mr-4" width="50" alt="">
          <div class="media-body">
            <h6 class="mt-0">Withdrawal Applications</h6>
            <p class="mb-0">View list of pending withdrawal applications</p>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card" style="cursor: pointer" onclick="location.href='<?php echo base_url();?>/approve_receipt'">
        <div class="media p-4 mb-0">
          <img src="/assets/images/file.png" class="mr-4" width="50" alt="">
          <div class="media-body">
            <h6 class="mt-0">Receipts/Lodgement</h6>
            <p class="mb-0">View & manage list of member's lodgements</p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-md-6 col-sm-6">
      <div class="card">
        <div class="card-body">
          <div class="bg-light p-3">
            <h6 class="m-0">System Reports</h6>
          </div>
          <div class="list-group mt-3 list-group-flush">
            <a href="<?php echo base_url();?>/cooperator_reports" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Cooperators Reports</h6>
                <small></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate savings balance reports for members.</small>
            </a>
            <a href="<?php echo base_url();?>/saving-variations/index/report" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Savings Reports</h6>
                <small class="text-muted"></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate reports for savings balance, variations, withdrawal etc. for members.</small>
            </a>
            <a href="<?php echo base_url();?>/loan/index/report" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Loan Reports</h6>
                <small class="text-muted"></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate approved, disapproved & disbursed loan reports for members.</small>
            </a>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-6 col-sm-6">
      <div class="card">
        <div class="card-body">
          <div class="bg-light p-3">
            <h6 class="m-0">Financial Reports</h6>
          </div>
          <div class="list-group mt-3 list-group-flush">
            <a href="<?php echo base_url();?>/cash-book" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Cash Book</h6>
                <small></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate report of cash receipts and payments.</small>
            </a>
            <a href="<?php echo base_url();?>/trial-balance" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Trial Balance</h6>
                <small class="text-muted"></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate report for credits and debits of all accounts.</small>
            </a>
            <a href="<?php echo base_url();?>/profit-loss" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Profit/Loss</h6>
                <small class="text-muted"></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate report for revenues, costs, and expenses.</small>
            </a>
            <a href="<?php echo base_url();?>/balance-sheet" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">Balance Sheet</h6>
                <small class="text-muted"></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate report for all assets, liabilities, equity etc.</small>
            </a>
            <a href="<?php echo base_url();?>/gl-extract" class="list-group-item list-group-item-action">
              <div class="d-flex w-100 justify-content-between">
                <h6 class="mb-1">GL Extract</h6>
                <small class="text-muted"></small>
              </div>
              <p class="mb-1"></p>
              <small class="text-muted">Generate report for all past transactions.</small>
            </a>
          </div>
        </div>
      </div>
    </div>
  </div>
<?= $this->endSection() ?>