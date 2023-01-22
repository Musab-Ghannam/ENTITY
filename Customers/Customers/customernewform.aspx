<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customernewform.aspx.cs" Inherits="Customers.customernewform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    
<head runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"/>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
    <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/cd46a65f5c.js" crossorigin="anonymous"></script>

    <title></title>
    <style>
        .save{
    display:flex;
    justify-content:center;
    align-items:center;
    margin:0 auto;
    border-radius:2px;
      color: #212529 !important;
    background-color: cornflowerblue !important;
    border-color: cornflowerblue !important;
}

  body {
    color: #89817f;
    background: #f1f2f7;
    font-family: 'Open Sans', sans-serif;
    padding: 0px !important;
    margin: 0px !important;
    font-size: 13px;
    text-rendering: optimizeLegibility;
    -webkit-font-smoothing: antialiased;
    -moz-font-smoothing: antialiased;
}

.profile-nav, .profile-info{
    margin-top:30px;   
}

.profile-nav .user-heading {
    background: #89817f;
    color: #fff;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    padding: 30px;
    text-align: center;
}

.profile-nav .user-heading.round a  {
    border-radius: 50%;
    -webkit-border-radius: 50%;
    border: 10px solid rgba(255,255,255,0.3);
    display: inline-block;
}

.profile-nav .user-heading a img {
    width: 112px;
    height: 112px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
}

.profile-nav .user-heading h1 {
    font-size: 22px;
    font-weight: 300;
    margin-bottom: 5px;
}

.profile-nav .user-heading p {
    font-size: 12px;
}

.profile-nav ul {
    margin-top: 1px;
}

.profile-nav ul > li {
    border-bottom: 1px solid #ebeae6;
    margin-top: 0;
    line-height: 30px;
}

.profile-nav ul > li:last-child {
    border-bottom: none;
}

.profile-nav ul > li > a {
    border-radius: 0;
    -webkit-border-radius: 0;
    color: #89817f;
    border-left: 5px solid #fff;
}

.profile-nav ul > li > a:hover, .profile-nav ul > li > a:focus, .profile-nav ul li.active  a {
    background: #f8f7f5 !important;
    border-left: 5px solid #89817f;
    color: #89817f !important;
}

.profile-nav ul > li:last-child > a:last-child {
    border-radius: 0 0 4px 4px;
    -webkit-border-radius: 0 0 4px 4px;
}

.profile-nav ul > li > a > i{
    font-size: 16px;
    padding-right: 10px;
    color: #bcb3aa;
}

.r-activity {
    margin: 6px 0 0;
    font-size: 12px;
}


.p-text-area, .p-text-area:focus {
    border: none;
    font-weight: 300;
    box-shadow: none;
    color: #c3c3c3;
    font-size: 16px;
}

.profile-info .panel-footer {
    background-color:#f8f7f5 ;
    border-top: 1px solid #e7ebee;
}

.profile-info .panel-footer ul li a {
    color: #7a7a7a;
}

.bio-graph-heading {
    background: #89817f;
    color: #fff;
    text-align: center;
    font-style: italic;
    padding: 40px 110px;
    border-radius: 4px 4px 0 0;
    -webkit-border-radius: 4px 4px 0 0;
    font-size: 16px;
    font-weight: 300;
}

.bio-graph-info {
    color: #89817e;
}

.bio-graph-info h1 {
    font-size: 22px;
    font-weight: 300;
    margin: 0 0 20px;
}

.bio-row {
    width: 50%;
    float: left;
    margin-bottom: 10px;
    padding:0 15px;
}

.bio-row p span {
    width: 100px;
    display: inline-block;
}

.bio-chart, .bio-desk {
    float: left;
}

.bio-chart {
    width: 40%;
}

.bio-desk {
    width: 60%;
}

.bio-desk h4 {
    font-size: 15px;
    font-weight:400;
}

.bio-desk h4.terques {
    color: #4CC5CD;
}

.bio-desk h4.red {
    color: #e26b7f;
}

.bio-desk h4.green {
    color: #97be4b;
}

.bio-desk h4.purple {
    color: #caa3da;
}

.file-pos {
    margin: 6px 0 10px 0;
}

.profile-activity h5 {
    font-weight: 300;
    margin-top: 0;
    color: #c3c3c3;
}

.summary-head {
    background: #ee7272;
    color: #fff;
    text-align: center;
    border-bottom: 1px solid #ee7272;
}

.summary-head h4 {
    font-weight: 300;
    text-transform: uppercase;
    margin-bottom: 5px;
}

.summary-head p {
    color: rgba(255,255,255,0.6);
}

ul.summary-list {
    display: inline-block;
    padding-left:0 ;
    width: 100%;
    margin-bottom: 0;
}

ul.summary-list > li {
    display: inline-block;
    width: 19.5%;
    text-align: center;
}

ul.summary-list > li > a > i {
    display:block;
    font-size: 18px;
    padding-bottom: 5px;
}

ul.summary-list > li > a {
    padding: 10px 0;
    display: inline-block;
    color: #818181;
}

ul.summary-list > li  {
    border-right: 1px solid #eaeaea;
}

ul.summary-list > li:last-child  {
    border-right: none;
}

.activity {
    width: 100%;
    float: left;
    margin-bottom: 10px;
}

.activity.alt {
    width: 100%;
    float: right;
    margin-bottom: 10px;
}

.activity span {
    float: left;
}

.activity.alt span {
    float: right;
}
.activity span, .activity.alt span {
    width: 45px;
    height: 45px;
    line-height: 45px;
    border-radius: 50%;
    -webkit-border-radius: 50%;
    background: #eee;
    text-align: center;
    color: #fff;
    font-size: 16px;
}

.activity.terques span {
    background: #8dd7d6;
}

.activity.terques h4 {
    color: #8dd7d6;
}
.activity.purple span {
    background: #b984dc;
}

.activity.purple h4 {
    color: #b984dc;
}
.activity.blue span {
    background: #90b4e6;
}

.activity.blue h4 {
    color: #90b4e6;
}
.activity.green span {
    background: #aec785;
}

.activity.green h4 {
    color: #aec785;
}

.activity h4 {
    margin-top:0 ;
    font-size: 16px;
}

.activity p {
    margin-bottom: 0;
    font-size: 13px;
}

.activity .activity-desk i, .activity.alt .activity-desk i {
    float: left;
    font-size: 18px;
    margin-right: 10px;
    color: #bebebe;
}

.activity .activity-desk {
    margin-left: 70px;
    position: relative;
}

.activity.alt .activity-desk {
    margin-right: 70px;
    position: relative;
}

.activity.alt .activity-desk .panel {
    float: right;
    position: relative;
}

.activity-desk .panel {
    background: #F4F4F4 ;
    display: inline-block;
}


.activity .activity-desk .arrow {
    border-right: 8px solid #F4F4F4 !important;
}
.activity .activity-desk .arrow {
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    display: block;
    height: 0;
    left: -7px;
    position: absolute;
    top: 13px;
    width: 0;
}

.activity-desk .arrow-alt {
    border-left: 8px solid #F4F4F4 !important;
}

.activity-desk .arrow-alt {
    border-bottom: 8px solid transparent;
    border-top: 8px solid transparent;
    display: block;
    height: 0;
    right: -7px;
    position: absolute;
    top: 13px;
    width: 0;
}

.activity-desk .album {
    display: inline-block;
    margin-top: 10px;
}

.activity-desk .album a{
    margin-right: 10px;
}

.activity-desk .album a:last-child{
    margin-right: 0px;
}
.editt{
   /* background-color:none;
    border:none;
    padding:0 40px 0 0;
    color:gray;
    text-align:left;*/
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

}

.edittt{
     border: none;
    background: none;
    cursor: pointer;
    margin: 0;
    padding: 0;
    color:gray;

    
    font-size:20px;
    border-radius:15px;


}
#Label7{
    font-weight:bold;
    font-size:30PX;
    color:RED;

}
#Label8{
    font-weight:bold;
    font-size:30PX;
    color:turquoise;

}
#Label9{
    font-weight:bold;
    font-size:30PX;
    color:green;

}
#Label10{
    font-weight:bold;
    font-size:30PX;
    color:rebeccapurple;

}
    /* Set the background color of the grid rows */
    .my-grid-view tr {
        background-color: #f5f5f5;
    }
    /* Set the font style of the text */
    .my-grid-view th, .my-grid-view td {
        font-family: Arial, sans-serif;
        font-size: 14px;
        color: #333;
        text-align:center;
    }
    /* Set the color and size of the borders */
    .my-grid-view th, .my-grid-view td {
        border: 1px solid #ddd;
    }
        .my-grid-view{
          margin-right:100PX;
        }
</style>
  
  
</head>
<body>
    <form id="form1" runat="server">
     
        <div class="container bootstrap snippets bootdey" >
          
<div class="row">
  <div class="profile-nav col-md-3">
      <div class="panel">
          <div class="user-heading round">
              <a href="#">
                  <img src="https://bootdey.com/img/Content/avatar/avatar3.png" alt="">
              </a>
              <h1>Camila Smith</h1>
              <p>deydey@theEmail.com</p>
          </div>

          <ul class="nav nav-pills nav-stacked">
       
            

                            <li class=""><a href="#"> <i class="fa fa-user"></i>   <asp:Button ID="Button4" runat="server" Text="view customers"   CssClass="editt" OnClick="Button4_Click" />  </a></li>
             
               <li> <a href="#"><i class="fa fa-edit"></i> <asp:Button ID="Button3" runat="server" Text=" insert customers "  CssClass="editt" OnClick="Button3_Click" /></a>  </li>
          </ul>
      </div>
  </div>
  <div class="profile-info col-md-9">
      <div class="panel">
    
          <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Placeholder="search for customers"></asp:TextBox><li class=""><a href="#"> <i class="fa-sharp fa-solid fa-magnifying-glass"></i>  <asp:Button ID="Button1" runat="server" Text="Search"   CssClass="edittt" OnClick="Button1_Click" />  </a></li>
          
          <footer class="panel-footer">t<button class="btn btn-warning pull-right">Post</button>
              <ul class="nav nav-pills">
                  <li>
                      <a href="#"><i class="fa fa-map-marker"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-camera"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class=" fa fa-film"></i></a>
                  </li>
                  <li>
                      <a href="#"><i class="fa fa-microphone"></i></a>
                  </li>
              </ul>
          </footer>
      </div>
      <div class="panel">
          <div class="bio-graph-heading">
              Aliquam ac magna metus. Nam sed arcu non tellus fringilla fringilla ut vel ispum. Aliquam ac magna metus.
          </div>
            <div runat="server" id="insert">
          <div class="panel-body bio-graph-info">
              <h1>Bio Graph</h1>
              <div class="row">
                  <div class="bio-row">
                     <asp:Label ID="Label1" runat="server" Text="Customer-name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
                  <div class="bio-row">
                         <asp:Label ID="Label2" runat="server" Text="customer-age"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
                  <div class="bio-row">
                <asp:Label ID="Label3" runat="server" Text="city-name"></asp:Label>
          
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>
                  </div>
                  <div class="bio-row">
                <asp:Label ID="Label4" runat="server" Text="phone"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
                  <div class="bio-row">
                        <asp:Label ID="Label5" runat="server" Text="email"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                  </div>
                  <div class="bio-row">
                   <asp:Label ID="Label6" runat="server" Text="photo"></asp:Label>
            <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" type="file"  />
                  </div>
                 
                 
              </div>
          </div>
     
   
      <asp:Button ID="Button2" runat="server" Text="insert"   CssClass="save" OnClick="Button2_Click" />
                 </div>
      <div>
          </div>
          <div runat="server" id="view">

         


          <div class="row">
     
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="" data-fgcolor="#e06b7d" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(224, 107, 125); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="red">⦁	Number of customers </h4>
                              <p><asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></p>
                            
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="" data-fgcolor="#4CC5CD" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(76, 197, 205); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="terques">⦁	Avg of age  </h4>
                              <p><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></p>
                             
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="" data-fgcolor="#96be4b" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(150, 190, 75); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="green">⦁	Max Age</h4>
                              <p><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></p>
                             
                          </div>
                      </div>
                  </div>
              </div>
              <div class="col-md-6">
                  <div class="panel">
                      <div class="panel-body">
                          <div class="bio-chart">
                              <div style="display:inline;width:100px;height:100px;"><canvas width="100" height="100px"></canvas><input class="knob" data-width="100" data-height="100" data-displayprevious="true" data-thickness=".2" value="" data-fgcolor="#cba4db" data-bgcolor="#e8e8e8" style="width: 54px; height: 33px; position: absolute; vertical-align: middle; margin-top: 33px; margin-left: -77px; border: 0px; font-weight: bold; font-style: normal; font-variant: normal; font-stretch: normal; font-size: 20px; line-height: normal; font-family: Arial; text-align: center; color: rgb(203, 164, 219); padding: 0px; -webkit-appearance: none; background: none;"></div>
                          </div>
                          <div class="bio-desk">
                              <h4 class="purple"> ⦁Min Age</h4>
                               <p><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></p>
                          
                          </div>
                      </div>
                  </div>
              </div>
                            <asp:GridView ID="GridView1" runat="server" CssClass="my-grid-view container" AutoGenerateColumns="False">

                                <Columns>
                                     <asp:BoundField DataField="customer_name" HeaderText="Name" />
        <asp:BoundField DataField="customer_age" HeaderText="Age" />
        <asp:BoundField DataField="email" HeaderText="Email" />
        <asp:BoundField DataField="phone" HeaderText="Phone" />
        <asp:BoundField DataField="city_name" HeaderText="City" />
  <asp:ImageField DataImageUrlField="photo" HeaderText="Photo"  ControlStyle-Width="150" />       
                                </Columns>
                            </asp:GridView> 
          </div>
              </div>
      </div>
  </div>
</div>
</div>
    </form>
  
</body>
</html>
