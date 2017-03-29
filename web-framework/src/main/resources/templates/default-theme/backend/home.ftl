<#import "includes/template.ftl" as template/>
<@template.page title="Dashboard">

<section id="dashboard">  
    <header class="clearfix">
    	<h1 class="page-title float-xs-left">Dashboard</h1>
    </header>  
    <div class="row">
        <div class="col-sm-12 col-md-6 col-lg-3">
            <div class="card card-primary">
                <div class="card-block card-inverse">
                    <div class="row">
                       <div class="col-sm-12">
                           <h1 class="float-xs-left"><i class="fa fa-eye" aria-hidden="true"></i></h1>
                           <h1 class="float-xs-right">10</h1>
                       </div>
                       <div class="col-sm-12">
                            <span class="float-xs-right">New visits</span>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="" class="card-link text-primary" role="button">
                        <span class="float-xs-left">View details</span>
                        <span class="float-xs-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-3">
            <div class="card card-success">
                <div class="card-block card-inverse">
                    <div class="row">
                       <div class="col-sm-12">
                           <h1 class="float-xs-left"><i class="fa fa-user" aria-hidden="true"></i></h1>
                           <h1 class="float-xs-right">10</h1>
                       </div>
                       <div class="col-sm-12">
                            <span class="float-xs-right">New users</span>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="" class="card-link text-success">
                        <span class="float-xs-left">View details</span>
                        <span class="float-xs-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-3">
            <div class="card card-warning">
                <div class="card-block card-inverse">
                    <div class="row">
                       <div class="col-sm-12">
                           <h1 class="float-xs-left"><i class="fa fa-tag" aria-hidden="true"></i></h1>
                           <h1 class="float-xs-right">10</h1>
                       </div>
                       <div class="col-sm-12">
                            <span class="float-xs-right">New advertisements</span>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="" class="card-link text-warning">
                        <span class="float-xs-left">View details</span>
                        <span class="float-xs-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
                    </a>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-6 col-lg-3">
            <div class="card card-danger">
                <div class="card-block card-inverse">
                    <div class="row">
                       <div class="col-sm-12">
                           <h1 class="float-xs-left"><i class="fa fa-money" aria-hidden="true"></i></h1>
                           <h1 class="float-xs-right">10</h1>
                       </div>
                       <div class="col-sm-12">
                            <span class="float-xs-right">New orders</span>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <a href="" class="card-link text-danger">
                        <span class="float-xs-left">View details</span>
                        <span class="float-xs-right"><i class="fa fa-arrow-circle-right" aria-hidden="true"></i></span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    
    <div class="row">
       <!--Statistics-->
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-bar-chart" aria-hidden="true"></i> <strong>Statistics</strong>
                </div>
                <div class="card-block">
                    <table class="table">
                        <thead class="text-muted">
                            <tr>
                                <th> </th>
                                <th>TODAY</th>
                                <th>YESTERDAY</th>
                                <th>LAST 30 DAYS</th>
                                <th>TOTAL</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th scope="row">Ads</th>
                                <td>1</td>
                                <td>5</td>
                                <td>25</td>
                                <td>31</td>
                            </tr>
                            <tr>
                                <th scope="row">Visits</th>
                                <td>20</td>
                                <td>18</td>
                                <td>300</td>
                                <td>338</td>
                            </tr>
                            <tr>
                                <th scope="row">Sales</th>
                                <td>0</td>
                                <td>0</td>
                                <td>5</td>
                                <td>5</td>
                            </tr>
                            <tr>
                                <th scope="row">Users</th>
                                <td>1</td>
                                <td>5</td>
                                <td>20</td>
                                <td>26</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!--/Statistics-->
        <!--Latest Published Ads-->
        <div class="col-lg-6">
            <div class="card">
                <div class="card-header">
                    <i class="fa fa-tag" aria-hidden="true"></i> <strong>Latest Published Ads</strong>
                </div>
                <div class="card-block">
                    <table class="table">
                        <thead class="text-muted">
                            <tr>
                                <th>#</th>
                                <th>NAME</th>
                                <th>CATEGORY</th>
                                <th>LOCATION</th>
                                <th>HITS</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>5</td>
                                <td><a href="http://ruzantrial.yclas.com/phones/huawei-p9-lite.html">Huawei P9 lite</a></td>
                                <td class="hidden-sm hidden-xs">Phones</td>
                                <td class="hidden-sm hidden-xs">Home location</td>
                                <td class="hidden-xs">1</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td><a href="http://ruzantrial.yclas.com/sample/ad-sample.html">Ad Sample CodersEdge</a></td>
                                <td class="hidden-sm hidden-xs">Sample</td>
                                <td class="hidden-sm hidden-xs">Home location</td>
                                <td class="hidden-xs">1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!--/Latest Ads-->
    </div>
    
</section>

</@template.page>