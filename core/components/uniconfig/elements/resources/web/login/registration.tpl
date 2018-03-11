{if $_modx->user.id > 0}
  {set $url = $_modx->makeUrl(9)}
  {$_modx->sendRedirect($url)}
{/if}
{$_modx->runSnippet('!officeAuth',[
  'groups' => 'Users',
  'HybridAuth' => 0,
  'tplLogin' => '@FILE chunks/login/_registration.tpl',
  'loginResourceId' => 9,
])}