<!-- MAIN CONTENT -->
<div id="content">

   {# <div class="alert alert-block alert-success">
        <a class="close" data-dismiss="alert" href="#">×</a>
        <h4 class="alert-heading"><i class="fa fa-check-square-o"></i> Check validation!</h4>
        <p>
            You may also check the form validation by clicking on the form action button. Please try and see the results below!
        </p>
    </div>#}

    <!-- widget grid -->
    <section id="widget-grid" class="">


        <!-- START ROW -->

        <div class="row">

            <!-- NEW WIDGET START -->
            <article class="col-sm-12 col-md-12 col-lg-12">

                <!-- Widget ID (each widget will need unique ID)-->
                <div class="jarviswidget" id="wid-id-0" data-widget-colorbutton="false" data-widget-editbutton="false">
                    <!-- widget options:
                    usage: <div class="jarviswidget" id="wid-id-0" data-widget-editbutton="false">

                    data-widget-colorbutton="false"
                    data-widget-editbutton="false"
                    data-widget-togglebutton="false"
                    data-widget-deletebutton="false"
                    data-widget-fullscreenbutton="false"
                    data-widget-custombutton="false"
                    data-widget-collapsed="true"
                    data-widget-sortable="false"

                    -->
                    <header>
                        <span class="widget-icon"> <i class="fa fa-eye"></i> </span>
                        <h2>Thêm mới User</h2>

                    </header>

                    <!-- widget div-->
                    <div>

                        <!-- widget edit box -->
                        <div class="jarviswidget-editbox">
                            <!-- This area used as dropdown edit box -->

                        </div>
                        <!-- end widget edit box -->

                        <!-- widget content -->
                        <div class="widget-body">

                            <form class="form-horizontal" method="post">

                                <fieldset>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Tên tài khoản</label>
                                        <div class="col-md-10">
                                            <input class="form-control" name="username" placeholder="" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Mật khẩu</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="" type="password" name="password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Nhập lại mật khẩu</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="" type="password" name="repassword">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Email</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="" name="email" type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Phone</label>
                                        <div class="col-md-10">
                                            <input class="form-control" placeholder="" name="phone" type="text">
                                        </div>
                                    </div>

                                    <div class="form-group">
                                        <label class="col-md-2 control-label" for="select-1">Giới tính</label>
                                        <div class="col-md-10">

                                            <select class="form-control" name="gender" id="select-1">
                                                <option>Không xác định</option>
                                                <option>Nam</option>
                                                <option>Nữ</option>
                                            </select>

                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-2 control-label">Địa chỉ</label>
                                        <div class="col-md-10">
                                            <textarea class="form-control" name="address" placeholder="Textarea" rows="4"></textarea>
                                        </div>
                                    </div>


                                </fieldset>


                                <div class="form-actions">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <button class="btn btn-default" type="submit">
                                                Cancel
                                            </button>
                                            <button class="btn btn-primary" type="submit">
                                                <i class="fa fa-save"></i>
                                                Submit
                                            </button>
                                        </div>
                                    </div>
                                </div>

                            </form>

                        </div>
                        <!-- end widget content -->

                    </div>
                    <!-- end widget div -->

                </div>
                <!-- end widget -->

            </article>
            <!-- WIDGET END -->

        </div>

        <!-- END ROW -->

    </section>
    <!-- end widget grid -->
</div>
<!-- END MAIN CONTENT -->
<script type="text/javascript">

    // DO NOT REMOVE : GLOBAL FUNCTIONS!

    $(document).ready(function() {
        var $checkoutForm = $('#checkout-form').validate({
            // Rules for form validation
            rules : {
                uname : {
                    required : true
                },
//                fname : {
//                    required : true
//                },
//                lname : {
//                    required : true
//                },
                /*email : {
                    required : true,
                    email : true
                },
                phone : {
                    required : true
                },*/
            },

            // Messages for form validation
            messages : {
                uname : {
                    required : 'Please enter your username'
                },
//                fname : {
//                    required : 'Please enter your first name'
//                },
//                lname : {
//                    required : 'Please enter your last name'
//                },
                /*email : {
                    required : 'Please enter your email address',
                    email : 'Please enter a VALID email address'
                },
                phone : {
                    required : 'Please enter your phone number'
                },*/

            },

            // Do not change code below
            errorPlacement : function(error, element) {
                error.insertAfter(element.parent());
            }
        });
        // START AND FINISH DATE
        $('#startdate').datepicker({
            dateFormat : 'dd.mm.yy',
            prevText : '<i class="fa fa-chevron-left"></i>',
            nextText : '<i class="fa fa-chevron-right"></i>',
            onSelect : function(selectedDate) {
                $('#finishdate').datepicker('option', 'minDate', selectedDate);
            }
        });

        $('#finishdate').datepicker({
            dateFormat : 'dd.mm.yy',
            prevText : '<i class="fa fa-chevron-left"></i>',
            nextText : '<i class="fa fa-chevron-right"></i>',
            onSelect : function(selectedDate) {
                $('#startdate').datepicker('option', 'maxDate', selectedDate);
            }
        });
    })

</script>