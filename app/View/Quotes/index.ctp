<div class="quotes index">
	
	<div class="banniere"></div>
	
	
	<h2><?php echo __("Vos citations d'Esprits Criminels"); ?></h2>
	
	
	
	
	
	
	
	
	<?php foreach ($quotes as $quote): ?>
		
		
		
		<div class="citation">
			<h3><?php echo h($quote['Quote']['title']); ?></h3>
			<p class="lead">"<?php echo h($quote['Quote']['body']); ?>"</p>
			<small>- <?php echo $this->Html->link($quote['User']['username'], array('controller' => 'users', 'action' => 'view', $quote['User']['id'])); ?> - <?php echo h($quote['Quote']['created']); ?> </small>
		</div>
		
		
	
<?php endforeach; ?>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<?php if($me['id']>0){ ?>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Quote'), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Quotes'), array('controller' => 'quotes', 'action' => 'index')); ?> </li>
		
	</ul>
</div>
<?php } else { echo '';}?>
