﻿#language: ru

@tree

Функционал: автотест возможности прикрепления файла картинки в форму элемента справочника Товар

Как тестироващик я хочу
автоматически проверять функционал по прикреплению файла картинки в форму элемента справочника Товар 
чтобы систематически проверять работоспособность функции   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Прикрепление файла картинки в форму элемента справочника Товар
	И Я устанавливаю в данную базу расширение "IRP_TestExtension" из каталога исходников "C:\Users\1\Desktop\Ванесса\Features\Internal\Модуль 7"
	И я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'Товарные запасы' 'Товары'
	И в таблице "Список" я перехожу к строке:
		| 'Артикул' | 'Код'       | 'Наименование' | 'Поставщик'      |
		| 'Ч-0001'  | '000000017' | 'Bosch1234'    | 'ЭлектроБыт ЗАО' |
	И в таблице "Список" я выбираю текущую строку	
	Когда открылось окно 'Bosch1234 (Товар)'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Файлы'
	И я нажимаю на кнопку с именем 'Создать'
	И в поле с именем 'Наименование' я ввожу текст 'Изображение'
	И я выбираю файл 'C:\Users\1\Desktop\Ванесса\Features\Internal\Модуль 7\Картинка.png'
	И я нажимаю на кнопку с именем "ВыбратьФайлСДискаИЗаписать"
	И Пауза 5
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	Тогда открылось окно 'Bosch1234 (Товар)'
	И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Bosch1234 (Товар)' в течение 20 секунд
	И я закрываю все окна клиентского приложения
	
	
		
	

	