{var $assets = ('assets_url' | config) ~ 'components/uniconfig/'}
<header id="header" class="header-fixed">
    <!-- top left nav -->
    <ul class="nav navbar-nav">
        <li>
            <a href="#" id="sidebar-sm">
                <i class="fa fa-bars"></i>
            </a>
        </li>
    </ul>
    <!-- / top left nav -->
    <!-- top right nav -->
    <ul class="nav navbar-nav navbar-right">
        <li>
            <a href="{$_modx->makeUrl(7)}" class="btn new-order hidden-xs">
                <i class="fa fa-plus"></i> Новая заявка</a>
        </li>
        <li>
            <a href="#" onclick="alert('Извините, но данный функционал временно не работает');">
                <i class="fa fa-bell-o"></i>
                <span class="badge badge-pink">3</span>
            </a>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <img alt="" src="{$assets ~ 'img/nopic.png'}" class="img-circle thumb-sm">
                <span class="username">{$_modx->runSnippet('!initials',['fullname' => $_modx->user.fullname])}</span>
                <span class="caret"></span>
            </a>
            <ul class="dropdown-menu">
                <li>
                    <a href="{$_modx->makeUrl(6)}"><i class="fa fa-briefcase"></i> Профиль</a>
                </li>
                <li>
                    <a href="{$_modx->makeUrl(9)}"><i class="fa fa-cogs"></i> Настройки</a>
                </li>
                <li>
                    <a href="/?service=logout&logoutResourceId=2"><i class="fa fa-sign-out"></i> Выйти</a>
                </li>
            </ul>
        </li>
    </ul>
    <!-- /top right nav -->
</header>