<?php echo $this->Session->flash('auth'); ?>


<?php echo $this->Form->create('User'); ?>
<?php echo $this->Form->input('username'); ?>
<?php echo $this->Form->input('password'); ?>
<?php echo $this->Html->link(__("Vous n'êtes pas inscrit ?"), array('controller' => 'users', 'action' => 'add')); ?>
<?php echo $this->Form->end('login'); ?>


