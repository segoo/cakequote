<div class="quotes form">
	
	
<?php echo $this->Form->create('Quote'); ?>
	<fieldset>
		<legend><?php echo __('Add Quote'); ?></legend>
		Pour le titre, veuillez écrire l'auteur suivi du verbe "dire" à l'imparfait de l'indicatif ponctué par des points de suspension.<br>
		<small>exemple : Freud disait...</small>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('body');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Quotes'), array('action' => 'index')); ?></li>
		
	</ul>
</div>
