<?php
/** @var uniConfig $uniConfig */
$uniConfig = $modx->getService('uniConfig', 'uniConfig', MODX_CORE_PATH . 'components/uniconfig/model/');
if ($modx->context->key != 'mgr') {
  switch ($modx->event->name) {
    // Событие перед регистрацией пользователя
    case 'OnBeforeUserFormSave':
      if ($_POST['action'] == 'auth/formRegister'){
        $surname = trim(htmlspecialchars($_POST['surname']));
        $name = trim(htmlspecialchars($_POST['name']));
        $patronymic = trim(htmlspecialchars($_POST['patronymic']));
        $surname = $uniConfig->Jevix($surname);
        $name = $uniConfig->Jevix($name);
        $patronymic = $uniConfig->Jevix($patronymic);
        if (!$surname || !$name || !$_POST['phone']) {
          $modx->event->output('Не заполнено одно из обязательных полей');
          break;
        }
        if (!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) {
          $modx->event->output('E-mail адрес указан не верно!');
          break;
        }
        $fullname = $surname .' '.$name.' '.$patronymic;
        $fullname = trim($fullname);
        $user->Profile->set('fullname', $fullname);
      }
      //При обновлении профиля
      if ($_POST['action'] == 'Profile/Update'){
        $surname = trim(htmlspecialchars($_POST['surname']));
        $name = trim(htmlspecialchars($_POST['name']));
        $patronymic = trim(htmlspecialchars($_POST['patronymic']));
        if (!$surname || !$name || !$_POST['phone']) {
          $modx->event->output('Не заполнено одно из обязательных полей');
          break;
        }
        $surname = $uniConfig->Jevix($surname);
        $name = $uniConfig->Jevix($name);
        $patronymic = $uniConfig->Jevix($patronymic);
        $fullname = $surname .' '.$name.' '.$patronymic;
        $fullname = trim($fullname);
        $user->Profile->set('fullname', $fullname);
      }
    break;
  }
}