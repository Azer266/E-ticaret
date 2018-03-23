<?php 
include 'header.php'; 
$slidersor=$db->prepare("SELECT * FROM slider where slider_id=:id");
$slidersor->execute(array(
  'id'=>$_GET['slider_id']
));
$say=$slidersor->rowCount();
$slidercek=$slidersor->fetch(PDO::FETCH_ASSOC);
?>
<!-- page content -->
<div class="right_col" role="main">
  <div class="">
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_title">
            <h2>Genel sliderlar <small>
              <?php 
              if ($_GET['durum']=="ok") {?>
              <b style="color: green;">Islem Basarili</b>
              <?php }
              elseif ($_GET['durum']=="no") {?>
              <b style="color: red;">Islem Basarisiz</b>
              <?php }
              ?>
            </small></h2>
            <div class="clearfix"></div>
          </div>
          <div class="x_content">
            <form action="../netting/islem.php" method="POST" id="demo-form2" enctype="multipart/form-data" data-parsley-validate class="form-horizontal form-label-left">

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Yüklü Slider<br><span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <img width="300" src="../../<?php echo $slidercek['slider_resimyol']; ?>">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Resim Seç<span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="file" id="first-name"  name="slider_resimyol" value="<?php echo $slidercek['slider_resimyol'] ?>" class="form-control col-md-7 col-xs-12">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Ad <span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="first-name" name="slider_ad" value="<?php echo $slidercek['slider_ad'] ?>" required="required" class="form-control col-md-7 col-xs-12">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Sira <span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="first-name" name="slider_sira" value="<?php echo $slidercek['slider_sira'] ?>" required="required" class="form-control col-md-7 col-xs-12">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Link<span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="first-name" name="slider_link" value="<?php echo $slidercek['slider_link'] ?>" class="form-control col-md-7 col-xs-12">
                </div>
              </div>

              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Durum<span class="required">*</span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <select id="heard" class="form-control" name="slider_durum" required>

                    <option value="1" <?php echo $slidercek['slider_durum'] == '1' ? 'selected=""' : ''; ?>>Aktif</option>
                    <option value="0" <?php if ($slidercek['slider_durum']==0) { echo 'selected=""'; } ?>>Pasif</option>

                  </select>
                </div>
              </div>

              <input type="hidden" name="slider_id" value="<?php echo $slidercek['slider_id'] ?>">
              <input type="hidden" name="slider_resimyol" value="<?php echo $slidercek['slider_resimyol'] ?>">

              <div class="ln_solid"></div>
              <div class="form-group">
                <div align="right" class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                  <button type="submit" name="sliderduzenle" class="btn btn-success">Guncelle</button>
                </div>
              </div>

            </form>
          </div>
        </div>
      </div>
    </div>


    <hr>
    <hr>
    <hr>


  </div>
</div>
<!-- /page content -->

<?php include 'footer.php'; ?>        