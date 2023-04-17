
<?php if($_SESSION['id'])
{ ?><div class="brand clearfix">
		<a href="https://uniabuja.edu.ng/" class="logo" style="font-size:16px; color:#fff"><img src="https://arena.mycredentials.ng/wp-content/uploads/2021/06/uniabuja-logo-1-280x300.jpg" class="ts-avatar hidden-side" alt="" /> UNIABUJA HMS</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		<ul class="ts-profile-nav">
			<li class="ts-account">
				<a href="#"><img src="https://th.bing.com/th/id/OIP.PNGQVIsPFaM41E60Zd0EdgHaHx?pid=ImgDet&rs=1" class="ts-avatar hidden-side" alt="" /> Account <i class="fa fa-angle-down hidden-side"></i></a>
				<ul>
					<li><a href="my-profile.php">My Account</a></li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>

<?php
} else { ?>
<div class="brand clearfix">
		<	<a href="https://uniabuja.edu.ng/" class="logo" style="font-size:16px; color:#fff; text-decoration: none;"><img src="https://arena.mycredentials.ng/wp-content/uploads/2021/06/uniabuja-logo-1-280x300.jpg" class="ts-avatar hidden-side" alt="" /> UNIABUJA HMS</a>
		<span class="menu-btn"><i class="fa fa-bars"></i></span>
		
	</div>
	<?php } ?>