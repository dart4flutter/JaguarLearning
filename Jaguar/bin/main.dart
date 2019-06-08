import 'package:jaguar/jaguar.dart';

main()=> new Jaguar()
    //读取静态文件
    ..staticFile('/', 'static/index.html')
    //读取目录下的文件
    ..staticFiles('/static/*', 'static')
    //监听日志
    ..log.onRecord.listen(print)
    ..serve(logRequests: true);