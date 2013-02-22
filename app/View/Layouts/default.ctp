<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright 2005-2012, Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       Cake.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $title_for_layout; ?>
	</title>
	<link href='http://fonts.googleapis.com/css?family=Marck+Script' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Calligraffitti' rel='stylesheet' type='text/css'>
	<?php
		echo $this->Html->meta(array("name"=>"viewport","content"=>"width=device-width, initial-scale=1.0"));
		echo $this->Html->meta('icon');

		echo $this->Html->css('cake.generic');
		echo $this->Html->css('bootstrap');
	    echo $this->Html->css('bootstrap-responsive');

		echo $this->fetch('meta');
		echo $this->fetch('css');
		echo $this->fetch('script');
	?>
	
	<?php echo $scripts_for_layout; ?>
</head>
<body data-spy="scroll" data-target=".subnav" data-offset="50">
	<div id="container">
		<div class="navbar navbar-fixed-top">
		    <div class="navbar-inner">
		      <div class="container">
		        <a class="btn btn-navbar" data-toggle="collapse"
		          data-target=".nav-collapse">
		          <span class="icon-bar"></span>
		          <span class="icon-bar"></span>
		          <span class="icon-bar"></span>
		        </a>
		        <a class="brand" href="/cakequote/">CakeQuote</a>
		        <div class="nav-collapse">
		          <ul class="nav">
		            <li class="active">
		              <a href="#"><?php echo $me['username']; ?></a>
		            </li>
		            
		              	<?php if($me['id']>0): ?>
							<li class=""><?php echo $this->Html->link('Déconnexion', '/users/logout') ?></li>
							<li class=""><?php echo $this->Html->link(__('Quotes'), array('controller' => 'quotes', 'action' => 'index')); ?> </li>
							<li class=""><?php echo $this->Html->link(__('Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
						<?php else: ?>
							<li class=""><?php echo $this->Html->link('Connexion', '/users/login') ?></li>
							<li class="">
				              <?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?>
				            </li>
						<?php endif; ?>
		            

		          </ul>
		        </div>
		      </div>
		    </div>
		  </div>
		
		<div id="row">
		


			<?php echo $this->Session->flash(); ?>

			<?php echo $this->fetch('content'); ?>
		</div>
		
		</div>
	</div>
	
</body>
</html>
