# Python_fixed_asset_management_system
## 在Windows运行项目

##### 安装Mysql
安装完数据库后需要设置`root`用户密码为`123456`
1. 创建数据库zcgl

   ```
   create database zcgl;
   ```

2. 使用数据库zcgl

   ```
   use zcgl;
   ```

3. 导入数据库zcgl.sql

   ```linux
   source zcgl.sql
   ```

##### 进入虚拟环境

```
.\venv\Sctipts\activate
```

##### 安装python包 

```
pip3 install -r requirements.txt
```

mysqlclient会安装失败，使用下面命令安装

```
pip install mysqlclient-1.4.6-cp38-cp38-win_amd64.whl
```

##### 运行Django项目`python manage.py runserver`

```
(venv) C:\Users\yhaiyanx\OneDrive - Intel Corporation\文档\python_fixed_asset_management_system\code\zcgl>python manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
May 09, 2023 - 16:32:50
Django version 2.2.3, using settings 'zcgl.settings' 
Starting development server at http://127.0.0.1:8000/
Quit the server with CTRL-BREAK.
```

##### 常见报错

1. django.db.utils.OperationalError

   ```
   (venv) C:\Users\yhaiyanx\OneDrive - Intel Corporation\文档\python_fixed_asset_management_system\code\zcgl>python manage.py runserver     
   Watching for file changes with StatReloader
   Performing system checks...
   
   System check identified no issues (0 silenced).
   Exception in thread django-main-thread:
   Traceback (most recent call last):
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 217, in ensure_connection
       self.connect()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 195, in connect   
       self.connection = self.get_new_connection(conn_params)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\mysql\base.py", line 227, in get_new_connection
       return Database.connect(**conn_params)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\MySQLdb\__init__.py", line 84, in Connect
       return Connection(*args, **kwargs)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\MySQLdb\connections.py", line 179, in __init__
       super(Connection, self).__init__(*args, **kwargs2)
   MySQLdb._exceptions.OperationalError: (2026, 'SSL connection error: unknown error number')
   
   The above exception was the direct cause of the following exception:
   
   Traceback (most recent call last):
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\threading.py", line 932, in _bootstrap_inner
       self.run()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\threading.py", line 870, in run
       self._target(*self._args, **self._kwargs)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\utils\autoreload.py", line 54, in wrapper
       fn(*args, **kwargs)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\core\management\commands\runserver.py", line 120, 
   in inner_run
       self.check_migrations()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\core\management\base.py", line 453, in check_migrations
       executor = MigrationExecutor(connections[DEFAULT_DB_ALIAS])
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\executor.py", line 18, in __init__  
       self.loader = MigrationLoader(self.connection)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\loader.py", line 49, in __init__    
       self.build_graph()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\loader.py", line 212, in build_graph    self.applied_migrations = recorder.applied_migrations()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\recorder.py", line 73, in applied_migrations
       if self.has_table():
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\recorder.py", line 56, in has_table 
       return self.Migration._meta.db_table in self.connection.introspection.table_names(self.connection.cursor())
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 256, in cursor    
       return self._cursor()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 233, in _cursor   
       self.ensure_connection()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 217, in ensure_connection
       self.connect()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\utils.py", line 89, in __exit__
       raise dj_exc_value.with_traceback(traceback) from exc_value
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 217, in ensure_connection
       self.connect()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 195, in connect   
       self.connection = self.get_new_connection(conn_params)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\mysql\base.py", line 227, in get_new_connection
       return Database.connect(**conn_params)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\MySQLdb\__init__.py", line 84, in Connect
       return Connection(*args, **kwargs)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\MySQLdb\connections.py", line 179, in __init__
       super(Connection, self).__init__(*args, **kwargs2)
   django.db.utils.OperationalError: (2026, 'SSL connection error: unknown error number')
   ```

   原因：数据库版本太高导致冲突，高数据库版本默认开启SSL

   解决方法：

   安装pymysql

   ```
   pip3 install pymysql
   ```

   在和项目目录一样名字的包下面的\_\_init\_\_.py中(zcgl\__init__.py)写入以下代码：

   ```
   import pymysql
   pymysql.install_as_MySQLdb()
   ```

2. AttributeError

   ```
   (venv) C:\Users\yhaiyanx\OneDrive - Intel Corporation\文档\python_fixed_asset_management_system\code\zcgl>python manage.py runserver
   Watching for file changes with StatReloader
   Performing system checks...
   
   System check identified no issues (0 silenced).
   Exception in thread django-main-thread:
   Traceback (most recent call last):
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\threading.py", line 932, in _bootstrap_inner
       self.run()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\threading.py", line 870, in run
       self._target(*self._args, **self._kwargs)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\utils\autoreload.py", line 54, in wrapper
       fn(*args, **kwargs)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\core\management\commands\runserver.py", line 120, 
   in inner_run
       self.check_migrations()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\core\management\base.py", line 453, in check_migrations
       executor = MigrationExecutor(connections[DEFAULT_DB_ALIAS])
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\executor.py", line 18, in __init__  
       self.loader = MigrationLoader(self.connection)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\loader.py", line 49, in __init__    
       self.build_graph()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\loader.py", line 212, in build_graph    self.applied_migrations = recorder.applied_migrations()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\recorder.py", line 73, in applied_migrations
       if self.has_table():
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\migrations\recorder.py", line 56, in has_table 
       return self.Migration._meta.db_table in self.connection.introspection.table_names(self.connection.cursor())
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 256, in cursor    
       return self._cursor()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 233, in _cursor   
       self.ensure_connection()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 217, in ensure_connection
       self.connect()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\base\base.py", line 197, in connect   
       self.init_connection_state()
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\mysql\base.py", line 231, in init_connection_state
       if self.features.is_sql_auto_is_null_enabled:
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\utils\functional.py", line 80, in __get__
       res = instance.__dict__[self.name] = self.func(instance)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\mysql\features.py", line 82, in is_sql_auto_is_null_enabled
       cursor.execute('SELECT @@SQL_AUTO_IS_NULL')
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\utils.py", line 103, in execute       
       sql = self.db.ops.last_executed_query(self.cursor, sql, params)
     File "C:\Users\yhaiyanx\AppData\Local\Programs\Python\Python38\lib\site-packages\django\db\backends\mysql\operations.py", line 146, in last_executed_query
       query = query.decode(errors='replace')
   AttributeError: 'str' object has no attribute 'decode'
   ```

   解决方法：在报错位置的上一行添加如下代码

   ```
   query = query.encode()
   ```

   参考网址：https://www.runoob.com/django/django-model.html常见报错信息部分

## 在Linux运行项目

##### 安装Mysql
安装完数据库后需要设置`root`用户密码为`123456`
1. 创建数据库zcgl

   ```
   create database zcgl;
   ```

2. 使用数据库zcgl

   ```
   use zcgl;
   ```

3. 导入数据库zcgl.sql

   ```
   source zcgl.sql
   ```

##### 进入虚拟环境

```
source venv/Scripts/activate
```

报错command not found

```
$ source venv/Scripts/activate
: command not found
bash: activate: line 4: syntax error near unexpected token `$'{\r''
'ash: activate: line 4: `deactivate () {
```

原因：在windows创建的venv环境，用linux环境运行需要转义字符

解决方法：在activate目录执行如下命令

```
sed -i 's/\r$//' activate
```

完成后重新执行`source venv/Scripts/activate`

##### 安装python包

```
pip3 install -r requirements.txt
```

在安装mysqlclient时会报错Command errored，如下：

```
$ pip3 install -r requirements.txt
Collecting Django==2.2.3
  Using cached Django-2.2.3-py3-none-any.whl (7.5 MB)
Collecting django-excel==0.0.10
  Using cached django_excel-0.0.10-py2.py3-none-any.whl (19 kB)
Collecting django-pure-pagination==0.3.0
  Using cached django-pure-pagination-0.3.0.tar.gz (10 kB)
Collecting lml==0.0.9
  Using cached lml-0.0.9-py2.py3-none-any.whl (9.9 kB)
Collecting mysqlclient==1.4.2.post1
  Using cached mysqlclient-1.4.2.post1.tar.gz (85 kB)
    ERROR: Command errored out with exit status 1:
     command: '/home/k8s/python固定资产管理系统/源码/zcgl/test_env/bin/python3' -c 'import sys, setuptools, tokenize; sys.argv[0] = '"'"'/tmp/pip-inst                                   all-cn9mqo4o/mysqlclient/setup.py'"'"'; __file__='"'"'/tmp/pip-install-cn9mqo4o/mysqlclient/setup.py'"'"';f=getattr(tokenize, '"'"'open'"'"', open)(__                                   file__);code=f.read().replace('"'"'\r\n'"'"', '"'"'\n'"'"');f.close();exec(compile(code, __file__, '"'"'exec'"'"'))' egg_info --egg-base /tmp/pip-inst                                   all-cn9mqo4o/mysqlclient/pip-egg-info
         cwd: /tmp/pip-install-cn9mqo4o/mysqlclient/
    Complete output (10 lines):
    /bin/sh: 1: mysql_config: not found
    Traceback (most recent call last):
      File "<string>", line 1, in <module>
      File "/tmp/pip-install-cn9mqo4o/mysqlclient/setup.py", line 16, in <module>
        metadata, options = get_config()
      File "/tmp/pip-install-cn9mqo4o/mysqlclient/setup_posix.py", line 51, in get_config
        libs = mysql_config("libs")
      File "/tmp/pip-install-cn9mqo4o/mysqlclient/setup_posix.py", line 29, in mysql_config
        raise EnvironmentError("%s not found" % (_mysql_config_path,))
    OSError: mysql_config not found
    ----------------------------------------
ERROR: Command errored out with exit status 1: python setup.py egg_info Check the logs for full command output.
```

解决方法：

```
sudo apt install python3-dev build-essential
sudo apt install libssl1.1
sudo apt install libssl1.1=1.1.1f-1ubuntu2
sudo apt install libssl-dev
sudo apt install libmysqlclient-dev
pip3 install mysqlclient
```

完成后重新执行`pip3 install -r requirements.txt`

##### 运行Django项目`python3 manage.py runserver`

```
(venv) k8s@k8s-desktop:~/python_fixed_asset_management_system/code/zcgl$ python3 manage.py runserver
Watching for file changes with StatReloader
Performing system checks...

System check identified no issues (0 silenced).
May 09, 2023 - 16:31:37
Django version 2.2.3, using settings 'zcgl.settings'
Starting development server at http://127.0.0.1:8000/
Quit the server with CONTROL-C.
```
## 在docker部署django

##### 配置MySQL数据库

**前提**：在物理机中已安装并配置完MySQL数据库用户`root`密码为`123456`

在物理机修改用户表实现远程连接

修改`/etc/mysql/mysql.conf.d/mysqld.cnf`，将文件中的`bind-address=127.0.0.1`改成如下配置

```
bind-address = 0.0.0.0
```

**注意**：在MySQL 8.0和更高版本中，bind-address指令可能不存在。在这种情况下，请将bind-address = 0.0.0.0添加到[mysqld]下。

进入MySQL

```
mysql -u root -p
```

使用MySQL数据库，修改用户表

```
use mysql;
update user set host = '%' where user = 'root';
```

重启MySQL服务

```
sudo systemctl restart mysql.service
```

关闭防火墙

```
sudo ufw disable
```

参考网址：

https://www.myfreax.com/mysql-remote-access/#
https://blog.csdn.net/xuezhangjun0121/article/details/103000452

##### build image

在Dockerfile相同目录下build image

```
docker build -t inteliotg/zcgl:v1 .
```

##### run container

启动容器时直接运行django
```
docker run -it -d --name zcgl -p 9000:8000 inteliotg/zcgl:v2-export_port bash -c "python manage.py runserver 0.0.0.0:8000"
```

在物理机打开浏览器访问`0.0.0.0:9000`或`127.0.0.1:9000`，在同网络的其他设备上访问方式为`IP:9000`

或先启动容器，进入容器后手动运行django
1. 启动容器
```
docker run -it -d --name zcgl -p 9000:8000 inteliotg/zcgl:v1
```

2. 进入容器

```
docker exec -it zcgl bash
```

3. 在容器中手动运行django

```
python manage.py runserver 0.0.0.0:8000
```

在物理机打开浏览器访问`0.0.0.0:9000`或`127.0.0.1:9000`，在同网络的其他设备上访问方式为`IP:9000`

**注意**：runserver后面的`0.0.0.0:8000`参数一定要加，并且端口一定要配置为`8000`，否则默认在容器中启动`http://127.0.0.1:8000/`，在容器外无法访问容器内的服务。
