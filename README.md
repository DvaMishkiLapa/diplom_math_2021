# diplom_math_2021
Репозиторий дипломной работы 2021 года, а так же материалов, которые к нему относятся.

## Слайд 1.

Тема моей дипломной работы "Программная реализация динамического моделирования погружения сваи".

## Слайд 2.

На сегодняшний день в строительной сфере довольно часто возникает потребность в использовании вибропогружателя для погружения свайных элементов в землю.

Такая востребованность подталкивает к разработке программного обеспечение для динамической визуализации модели погружения свайного элемента.

Решение данной задачи несомненно актуальна и соответствует профилю.

## Слайд 3.

Мною была поставлена задача Дл на основе теории вибрационных машин и теоремы об оптимальности импульса Максвелла-Фейера,
разработать ПО для визуализации модели погружения свайного элемента в землю

## Слайд 4.

Работа импульсного погружателя основана двух основных принципах:

- На эффекте резкого снижения сопротивлению погружения свайного элемента при сообщении последнему вибрации;

- На действии полигармонического импульса, создаваемого центробежными силами системы дебалансов.

Импульсный погружатель в своей конструкции имеет несколько пар валов (1) с дебалансами (2).
При вращении дебалансов на их ось крепления действует центробежная сила и вибрационный погружатель получает вибрирующее движение,
которое сообщается через наголовник (3) свайному элементу (4).

## Слайд 5.

Теперь рассмотрим строение дебалансов более подробно. Пусть у нас есть некий дебаланс.
Радиус его вала будет равен R, радиус дебаланса будет равен r,
расстояние до центра масс будет равно l, а угловая скорость дебаланса будет равна ω.

Тогда при вращении дебаланса будет возникать центробежная сила, выражаемые формулой (1), его гармонические колебания будут выражаться формулой (2).

## Слайд 6.

Для компенсации горизонтальных сил, возникающих при вращении одного дебаланса, в конструкции погружателей дебалансы используют парами. 

Для пары дебалансов гармонические колебания будут иметь вид формулы (3).

## Слайд 7.

Если в конструкции погружателя участвуют несколько пар дебалансов разных характеристик,
то для получения общего импульса вышестоящий уровень дебалансов должен иметь угловую скорость в два раза выше, чем прошлый.

На первом графике изображено гармоническое колебание одной пары дебалансов с соответствующей формулой. На следующем графике таких пар уже две.

## Слайд 8.

Для нахождения гармонических колебаний для всех пар дебалансов можно воспользоваться суммой (4). В ней n - общее количество пар дебалансов, а k - порядковый номер пары дебалансов.

## Слайд 9.

При использовании импульсного погружателя важно, чтобы импульс, направленный на погружение сваи был как можно больше, а импульс, направленный в противоположную сторону как можно меньше.

На основе этих рассуждений поставим задачу оптимизации:

необходимо, чтобы соотношение максимального значения гармонического колебания к минимальному значению стремилось к максимуму (5).

Для достижения этой цели воспользуемся теоремой оптимальности модели полигармонического импульса:
сумма гармонических колебаний дебалансов (4) оптимальна т.и.т.д, когда она с точностью до постоянного множителя имеет вид суммы Фейера (6).

## Слайд 10.

Согласно этой теореме, мы можем найти коэффициент лямбда (7) для каждой пары дебалансов, где n - общее количество пар дебалансов, а k - порядковый номер пары дебалансов.

## Слайд 11.

При помощи теоремы об оптимальности модели полигармонического импульса и на основе теории вибрационных машин
на языке Python была разработана программа для динамического моделирования процесса погружения сваи.

## Слайд 12.

Спасибо, за внимание.
