### Создание шаблонов виртуальных машин

Для экономии времени на создание тестового окружения перед запуском теста мы
используем заранее подготовленные шаблоны ВМ для QEMU. Такие шаблоны удобно создавать с
помощью инструмента Packer. Чтобы создать шаблон нужно:

- [установить Packer](https://www.packer.io/intro/getting-started/setup.html)
- установить QEMU
- запустить команду создания шаблона: ```$ packer build -only=qemu centos-7.0.json```

См. также [готовые шаблоны Packer](https://github.com/chef/bento/) для самых популярных ОС.

Проверить конфиг на правильность:

- Debian-based: debconf-set-selections -c preseed.cfg
- RPM-based: ksvalidator, which is part of the pykickstart package
