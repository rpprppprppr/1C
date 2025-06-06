// @strict-types

#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ОбработкаЗаполнения(ДанныеЗаполнения, ТекстЗаполнения, СтандартнаяОбработка)
	Ответственный = Пользователи.ТекущийПользователь();
КонецПроцедуры

Процедура ПриКопировании(ОбъектКопирования)
	Ответственный = Пользователи.ТекущийПользователь();
КонецПроцедуры

Процедура ОбработкаПроведения(Отказ,Режим)

	// регистр ЦеныНоменклатуры
	Движения.ЦеныНоменклатуры.Записывать = Истина;
	Для Каждого ТекСтрокаЦеныНоменклатуры из ЦеныНоменклатуры Цикл
		Движение = Движения.ЦеныНоменклатуры.Добавить();
		Движение.Период = Дата;
		Движение.Номенклатура = ТекСтрокаЦеныНоменклатуры.Номенклатура;
		Движение.Цена = ТекСтрокаЦеныНоменклатуры.Цена;
	КонецЦикла;

КонецПроцедуры

#КонецОбласти

#КонецЕсли